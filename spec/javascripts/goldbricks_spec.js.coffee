fixture.preload('goldbricks')

describe 'goldbricks', ->

  beforeEach () ->
    window.linkableDestroySpy = linkableDestroy()
    spyOn(window, 'linkableDestroy').andReturn linkableDestroySpy

  xit 'renders id of goldbrick', ->
    expected_id = $('.goldbrick-delete-link').first().data('id')
    expect( expected_id ).toBe('5284d1216137610002000000')
