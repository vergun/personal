# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
	jQuery ->
		loc = location.href.substring(7)
		loc = loc.substring(loc.indexOf("/"))
		if loc == "/" then $(".posts-list table:first-child a").addClass("selected") else 
		$('a[href$="'+loc+'"]').addClass("selected")



