# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
	jQuery ->
		loc = location.href.substring(7)
		loc = loc.substring(loc.indexOf("/"))
		if loc == "/" then $(".posts-list tr:first-child a").addClass("selected") else 
		$('a[href$="'+loc+'"]').addClass("selected")
#Picture
		$('.profile .me').hover (->
			$('.tooltip').stop(true).fadeIn('fast').animate(height:'150px')  
		), ->
				$('.tooltip').fadeOut('fast')
#Newspapers
		$('.profile .them').hover ( ->
			$('.tooltip').stop(true).animate(height: '500px').find('.tooltip aside').fadeIn('fast')
		), ->
				$('.tooltip').animate(height: '150px').fadeOut('fast')
				
				






