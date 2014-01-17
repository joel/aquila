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
          link.off().closest('tr').fadeOut()

      # success: (response) ->
      #   link.off().closest('tr').fadeOut()


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

# window.Link =
#   remove: ->
#     link = $(this)
#     promise = new $.Deferre()
#     $.ajax
#       url: link.data('path') + '.json'
#       type: 'DELETE'
#       dataType: 'json'
#       contentType: 'application/json'
#       data:
#         id: link.data('id')
#
#       success: (response) ->
#         promise.resolve response
#
#       error: (response) ->
#         promise.reject response
#
#     promise

jQuery ->

  $('table.goldbricks tr').each -> HoverableTr @
  $('a.goldbrick-delete-link').each -> linkableDestroy @

  # $('a.goldbrick-delete-link').each (index) ->
  #   console.log index + '. ' + $(@).data('id') + ' : ' + $(@).data('path')
  #   link = $(@)
  #   linkPromise = Link.remove(link)
  #   linkPromise.done (response) ->
  #     link.parent('tr').hide()
  #   ,fail (response) ->
  #     console.log 'fail:' + response




  # $('table.goldbricks tr').each -> new HoverableTr(@).hoverize()
  # $('a.goldbrick-delete-link').each -> new LinkableDestroy(@).bindLink()
  # $('table.goldbricks').find('tr').each ->
  #   new LinkableDestroy(@, @.find('a.goldbrick-delete-link')).bindLink()
