$(function(){

	Main.nav();

});

var Main = {

	nav: function() {
		$(document).on('click', '.nav ul li a', function() {
			$.each($('.nav ul li a'), function() {
				$(this).removeClass('selected');
			});
			$(this).addClass('selected');
			})
	}


};
