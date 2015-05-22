# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document)
  .on('click', '#show-hottest', (e) ->
    $(this).hide()
    $('#hottest').removeClass 'hidden'
  )
  .on('click', '#show-nottest', (e) ->
    $(this).hide()
    $('#nottest').removeClass 'hidden'
  )
  .on('click', '#show', (e) ->
    $(this).hide()
    target = $(this).data('target')
    $('#'+target).removeClass 'hidden'
    $('.'+target).addClass 'opaque'
  )
