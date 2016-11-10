window.on_ready_and_load = (function_to_run) ->
  $(document).ready(function_to_run)
  $(document).on('page:load', function_to_run)

load_data_table = ->
  $('#student_payments').DataTable()

window.on_ready_and_load load_data_table
