$(document).ready(function() {
	console.log("ready");


var lastScrollTop = 0;
$(window).scroll(function(event){
	console.log("scroll");
	var st = $(this).scrollTop();
	if (st > lastScrollTop){
		// downscroll code
		console.log("down");
	} else {
		// upscroll code
		console.log("up");
	}
	lastScrollTop = st;
});
});

  $(window).scroll(function() {
        //User is scrolling
	console.log("scrolling");
    });

$(document).on( 'scroll', 'body', function(){
	console.log('Event Fired');
});
