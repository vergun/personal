# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
	jQuery ->
		loc = location.href.substring(7)
		loc = loc.substring(loc.indexOf("/"))
		if loc == "/" then $(".posts-list tr:nth-child(2) a").addClass("selected") else 
		$('a[href$="'+loc+'"]').addClass("selected")

		$('.profile ul li').hover (-> 
			$(this).find('.tooltip').stop(true).fadeIn('fast')
		), ->
				$(this).find('.tooltip').fadeOut('fast')

		$('.posts-list tr:first-child a').toggle (->
			$(this).addClass('selected')
			$('.profile').fadeIn('fast')
			$('.posts-list, .main-post').animate({paddingLeft: '4%'}, 'fast')

		), ->
			$(this).removeClass('selected')
			$('.profile').fadeOut('fast')
			$('.posts-list, .main-post').animate({paddingLeft: '0%'}, 'fast')

		$('.main-footer #mobile a').click ( ->
			$('.container').animate({opacity: .05}, 'slow')
			$('.optimized').animate({opacity: 1}, 'slow')
		)
		$('.optimized a').click( ->
			$('.optimized').animate({opacity:0}, 'normal')
			$('.container').animate({opacity: 1}, 'normal')
		)
		$('a.colorbox').colorbox()










