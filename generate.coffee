fs     = require('fs')
states = require('./coffee/states').states

class Generate
  constructor: (opts, compiler) ->
    return unless process.env.BUILD_PROD is 'true'
    compiler.plugin 'after-emit', (params) ->
      template = fs.readFileSync('./index.html').toString()

      # Copy index template
      fs.writeFileSync './dist/index.html', template.replace(new RegExp('#stateText#', 'g'), 'your state primary or caucus')

      # Create index file for each state
      for key, state of states
        folder = "./dist/#{key}"
        fs.mkdirSync(folder) unless fs.existsSync(folder)
        fs.writeFileSync "#{folder}/index.html", template.replace(new RegExp('#stateText#', 'g'), state.name)

module.exports = (options) ->
  {
    apply: Generate.bind(@, options)
  }
