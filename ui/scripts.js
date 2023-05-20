window.addEventListener('message', function(event) {

	if (event.data.action == 'show') {
		$("body").fadeIn(400);
		$( ".text" ).text( "" + event.data.message + "" );
		$(".eCircle").text(event.data.input);
	} else if (event.data.action == 'hide') {
		$("body").fadeOut(400);
	}
})

