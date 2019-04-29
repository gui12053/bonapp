$(document).on 'turbolinks:load', ->
  $('.alert-success').delay(2500).slideUp 500, ->
    $('.alert').alert 'close'
    $('.alert-danger').delay(2500).slideUp 500, ->
      $('.alert').alert 'close'
