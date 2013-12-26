fixture.preload("moment")

describe 'moment method calls', ->

  beforeEach () ->
    moment.lang 'en'

    window.momentspy = moment()
    spyOn(momentspy, 'from').andReturn ''
    spyOn(momentspy, 'calendar').andReturn ''
    spyOn(window, 'moment').andReturn momentspy

  it 'renders date with content when no data-value', ->
    spyOn(momentspy, 'isValid').andReturn true
    expected = $('#date1').text()
    rendermoment $('#date1')
    expect(moment).toHaveBeenCalledWith expected
    expect(momentspy.calendar).toHaveBeenCalled()

  xit 'renders date with data-value if present', ->
    spyOn(momentspy, 'isValid').andReturn true
    expected = $('#date2').data('value')
    rendermoment $('#date2')
    expect(moment).toHaveBeenCalledWith expected
    expect(momentspy.calendar).toHaveBeenCalled()

  xit 'uses method provided by data-method if present', ->
    spyOn(momentspy, 'isValid').andReturn true
    expected = $('#date3').text()
    rendermoment $('#date3')
    expect(moment).toHaveBeenCalledWith expected
    expect(momentspy.from).toHaveBeenCalled()

  it 'doesnt modify invalid dates', ->
    spyOn(momentspy, 'isValid').andReturn false
    rendermoment $('#date4')
    expect(momentspy.from).not.toHaveBeenCalled()
    expect(momentspy.calendar).not.toHaveBeenCalled()

describe 'moment rendering', ->

  beforeEach () ->
    moment.lang 'en'

  it 'replaces date text with moment result', ->
    rendermoment $('#date5')
    result = $('#date5').text()
    expected = $('#expected5').text()
    expect(result).toEqual(expected)

  it 'uses time zones', ->
    sample_time_zone = {
      friendly_identifier: "America - New York",
      identifier: "America/New_York",
      name: "Eastern Time (US & Canada)",
      utc_offset: -18000,
      utc_total_offset: -14400
    }
    rendermoment $('#date6'), sample_time_zone
    result = $('#date6').text()
    expected = $('#expected6').text()
    expect(result).toEqual(expected)
