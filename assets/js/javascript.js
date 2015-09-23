$(document).ready(function() {
	if (window.location.pathname != '/about/privacy.html' && $.cookie('privacy') != 'true') {
        // Privacy has not been accepted
		var html = '<div aria-hidden="false" style="display: block;" class="modal fade in" tabindex="-1" role="dialog"><div class="modal-dialog"><div class="modal-content"><div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button><h4 class="modal-title">Privacy Policy</h4></div><div class="modal-body"><p>We use cookies on this site for our own business purposes including collecting aggregated statistics to analyze how our site is used, integrating social networks and forums and to show you ads tailored to your interests. Find out our <a href="/about/privacy.html" title="Privacy Policy">privacy policy</a> for more information.</p><p>By continuing to browse the site, you are agreeing to our use of cookies.</p></div><div class="modal-footer"><button id="privacy" type="button" class="btn btn-aqua" data-dismiss="modal">Accept</button></div></div></div></div>';
        $('body').append(html);
		$('body > .modal').modal('show');
    }

	if ($('#toc').length) {
		$('#toc').toc({
			'selectors': 'h1,h2,h3,h4,h5,h6',	//elements to use as headings
			'container': '#main-content',		//element to find all selectors in
			'smoothScrolling': true,			//enable or disable smooth scrolling on click
			'prefix': 'toc',					//prefix for anchor tags and class names
			'onHighlight': function(el) {},		//called when a new section is highlighted 
			'highlightOnScroll': true,			//add class to heading that is currently in focus
			'highlightOffset': 100,				//offset to trigger the next headline
			'anchorName': function(i, heading, prefix) { //custom function for anchor name
				return prefix+i;
			},
			'headerText': function(i, heading, $heading) { //custom function building the header-item text
				return $heading.text();
			},
			'itemClass': function(i, heading, $heading, prefix) { // custom function for item class
				return $heading[0].tagName.toLowerCase();
			}
		});
	}
});

$(document).on('click', '#privacy', function(e) {
    $.cookie('privacy', 'true', {
        expires: 90,
        path: '/'
    });
    if ($.cookie('privacy') == 'true') {
        window.location.reload();
    }
});

// Remove modal on close
$(document).on('hide.bs.modal', '.modal', function () {
	$(this).remove();
});
