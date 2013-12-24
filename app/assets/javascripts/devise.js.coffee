window.sessions_new_onload = ->
  autoselect_tz()

window.users_new_onload = ->
  autoselect_tz()

autoselect_tz = ->
  unless gon.time_zone
    new Time_zone_detection().detect()
  detected_tz = gon.time_zone.name().split('/').pop()
  $('#user_time_zone').val(detected_tz)