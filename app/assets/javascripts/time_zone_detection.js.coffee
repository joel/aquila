class window.Time_zone_detection

  detect: ->
    unless gon.time_zone
      this.set_time_zone()
    gon.time_zone
  ,
  set_time_zone: ->
    gon.time_zone = jstz.determine()