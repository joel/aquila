# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


window.linkableDestroy = (link_tag) ->
  link = $(link_tag)

  link.click (event) ->
    event.preventDefault()

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

window.HoverableTr = (tr_tag) ->
  tr = $(tr_tag)

  tr.hover ->
    tr.find('.goldbrick-delete-link').fadeIn(100)
  , ->
    tr.find('.goldbrick-delete-link').fadeOut(500)

jQuery ->

  $('table.goldbricks tr').each -> HoverableTr @
  $('a.goldbrick-delete-link').each -> linkableDestroy @
