# @see http://stackoverflow.com/a/9986959/773830
$ ->
  view_method_name = $('body').data('view') + '_onload'
  eval('#{view_method_name}()') if eval('typeof #{view_method_name} == 'function'')

  view_action_method_name = $('body').data('view') + '_'+$('body').data('action')+'_onload'
  eval('#{view_action_method_name}()') if eval('typeof #{view_action_method_name} == 'function'')