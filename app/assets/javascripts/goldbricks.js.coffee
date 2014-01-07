# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->

  $('table.goldbricks tr').hover (->
    $(this).find('.goldbrick-delete-link').fadeIn(100)
  ), ->
    $(this).find('.goldbrick-delete-link').fadeOut(500)

  $('a.goldbrick-delete-link').click (event) ->
    event.preventDefault()
    link = $(this)
    id = link.data 'id'
    path = link.data 'path'
    data = { 'id': id }
    $.ajax
      url: (path + '.json')
      type: 'DELETE'
      dataType: 'json'
      data: data
      statusCode:
        200: ->
          link.closest('tr').hide()
