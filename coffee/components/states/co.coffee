React       = require('react')
CommonInfo  = require('components/states/partials/commonInfo')
Dates       = require('components/states/partials/dates')
entity      = require('utils/entity')

module.exports = React.createClass
  displayName: 'Colorado'

  render: ->
    fills       = require('states').fills
    primaryType = require('states').primaryType

    <div>
      <div className='state-dates'>
        <div className='center'>
          <h2 style={color: fills[@props.state.fillKey]}>Change of Address Deadline</h2>
          <h4>Monday, February 1</h4>
        </div>
        <div className='center'>
          <h2 style={color: fills[@props.state.fillKey]}>{primaryType(@props.state.fillKey, @props.state.label)} Date</h2>
          <h4>{@props.state.date}</h4>
        </div>
      </div>
      <div className='state-info'>
        <p>
          Colorado has closed caucuses {entity('mdash')} Coloradans must register as a Democrat to vote for Bernie!
        </p>
        <p className='center'>
          <a className='big' href={'https://www.sos.state.co.us/voter-classic/pages/pub/olvr/findVoterReg.xhtml'}>Check your registration status</a>
        </p>
        <p>
          In order to vote in Colorado, you must be:
        </p>
        <ul>
          <li>A resident of the precinct for at least 30 days.</li>
          <li>Registered to vote no later than 29 days before the caucus.</li>
          <li>Affiliated with the party holding the caucus for at least 2 months before the caucus - Deadline was January 4, 2016. </li>
        </ul>
        <CommonInfo state='Colorado' office={@props.state.office} />
      </div>
    </div>
