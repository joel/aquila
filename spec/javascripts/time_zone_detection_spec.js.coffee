describe 'time_zone_detection', ->

  it 'when gon.time_zone not set, it calls set_time_zone with time_zone_detection', ->
    window.gon = { time_zone: null }

    window.time_zone_detection = new Time_zone_detection()
    window.time_zone_detection.set_time_zone = jasmine.createSpy('set_time_zone')
    time_zone_detection.detect()

    expect(window.time_zone_detection.set_time_zone).toHaveBeenCalled()

  it 'when gon.time_zone is set, it doesnt do anything', ->
    window.gon = { time_zone: 'Europe/Paris' }

    window.time_zone_detection = new Time_zone_detection()
    window.time_zone_detection.set_time_zone = jasmine.createSpy('set_time_zone')
    time_zone_detection.detect()

    expect(window.time_zone_detection.set_time_zone).not.toHaveBeenCalled()

  it 'returns gon.time_zone', ->
    window.gon = { time_zone: 'Europe/Paris' }
    expect(new Time_zone_detection().detect()).toEqual('Europe/Paris')