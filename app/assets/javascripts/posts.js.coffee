# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

# $(document).ready -->


#Hi Cory,

#I’ve had to do this before myself, when a server-side solution (which is by far preferable) was unavailable. Rather than create a separate case for each link, though, I simply do the following:

#$(document).ready(function() {
#// Get rid of “http://”
#loc = location.href.substring(7);

#// Get rid of domain name
#loc = loc.substring(loc.indexOf(“/”));

#// Get rid of fragment identifier
#var i = loc.indexOf(“#”);
#if (i > -1) loc = loc.substring(0, i);

#// Highlight navigator links to this page
#$(“#navigator a[href='" + loc + "']“).addClass(‘now’);
#});

#In other words, inspect each navigation link and select it if its target is the current URL.

#http://coryschires.com/how-to-add-selected-states-to-your-navigation-using-jquery/

#$(document).ready ->
#	jQuery ->
#		alert "hello"  if window.location = "http://localhost:3000"
			#$('a[href$="/posts?page=6"]').css('color':'orange')

	#getLocation = (href) ->
	 # l = document.createElement("a")
	 # l.href = href
	 # l

	#l = getLocation(window.location)
	#console.debug(l.hostname) >> 
	#console.debug(l.pathname) >> "/path"

	#alert(l.hostname)
	#alert(l.pathname)
	#alert(window.location)

	#url = "http://google.com/?search=bob#asdf"
	#shorterUrl = url.split("#")[0].split("?")[0]
	#alert shorterUrl

	#alert(window.location.hash)



