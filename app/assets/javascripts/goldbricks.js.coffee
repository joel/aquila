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
      # contentType: 'application/json'
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


# LinkableDestroy = (el, link) ->
#   tr    = @
#   @el   = el
#   console.log @el
#   @link = link
#
#   @bindLink = ->
#     @link.click (event) ->
#       event.preventDefault()
#
#       # id = link.data 'id'
#       # path = link.data 'path'
#       # data = { 'id': id }
#
#       $.ajax
#         url: (tr.find('a.goldbrick-delete-link').data('path') + '.json')
#         context: tr
#         type: 'DELETE'
#         dataType: 'json'
#         data: { 'id': tr.find('a.goldbrick-delete-link').data('id') }
#
#         statusCode:
#           200: ->
#             @el.hide()

# class linkableDestroy
#
#   constructor: (link_tag) ->
#     @link = link_tag
#     @tr = $(link_tag).closest('tr')
#     element = this
#
#   bind: ->
#     @link.click (event) ->
#       event.preventDefault()
#
#       id = @link.data 'id'
#       path = @link.data 'path'
#       data = { 'id': id }
#
#       $.ajax
#         url: (path + '.json')
#         context: element
#         type: 'DELETE'
#         dataType: 'json'
#         data: data
#
#         statusCode:
#           200: ->
#             @tr.hide()

# class HoverableTr
#
#   constructor: (tr_tag) ->
#     @tr = $(tr_tag)
#
#   hoverize: ->
#     @tr.hover ->
#       @tr.find('.goldbrick-delete-link').fadeIn(100)
#     , ->
#       @tr.find('.goldbrick-delete-link').fadeOut(500)

jQuery ->

  $('table.goldbricks tr').each -> HoverableTr @
  $('a.goldbrick-delete-link').each -> linkableDestroy @
  # $('table.goldbricks tr').each -> new HoverableTr(@).hoverize()
  # $('a.goldbrick-delete-link').each -> new LinkableDestroy(@).bindLink()
  # $('table.goldbricks').find('tr').each ->
  #   new LinkableDestroy(@, @.find('a.goldbrick-delete-link')).bindLink()
