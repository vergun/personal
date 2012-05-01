# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
	jQuery ->
		loc = location.href.substring(7)
		loc = loc.substring(loc.indexOf("/"))
		$('a[href$="'+loc+'"]').addClass("selected")
		#$('a[href$="#{loc}"]').addClass("selected")
		#css('color':'orange', 'border-bottom':'1px solid orange');
		

#$(document).ready -->

#	loc = location.href.substring(7)
#	loc = loc.substring(loc.indexOf(“/”))
#	var i = loc.indexOf(“#”);
#	if (i > -1) loc = loc.substring(0, i);
#	$(“#navigator a[href='" + loc + "']“).addClass(‘now’);



