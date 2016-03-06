# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
	$('table').stickyTableHeaders()
	return

$('.js-replace-no-image').error ->
  $(this).attr
    src: '/images/no-image.jpg'
    alt: 'no image'

