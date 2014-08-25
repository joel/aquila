window.rendermoment = (date_tag, time_zone = null) ->

  date   = $(date_tag).data('value')  || $(date_tag).text()
  method = $(date_tag).data('method') || 'calendar'
  format = $(date_tag).data('format') || null

  my_moment = moment(new Date(date))

  if my_moment.isValid()

    if time_zone
      my_moment = my_moment.zone(time_zone)

    rendered_date = my_moment[method](format)
    $(date_tag).text rendered_date
