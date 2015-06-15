$(document).ready(function() {
    if ($.cookie('privacy') != 'true') {
        // Privacy has not been accepted
        var html = '<div id="privacy-container"><div id="privacy-content"><div id="privacy-head">Privacy Policy</div><div id="privacy-body"><p>We use cookies on this site for our own business purposes including collecting aggregated statistics to analyze how our site is used, integrating social networks and forums and to show you ads tailored to your interests. Find out our <a href="/about/privacy.html" title="Privacy Policy">privacy policy</a> for more information.</p><p>By continuing to browse the site, you are agreeing to our use of cookies.</p></div><div id="privacy-buttons"><input id="privacy-accept" value="Accept" type="submit"></div></div></div>';
        $('#body').addClass('opaque');
        $('body').append(html);
    }
});

$(document).on('click', '#privacy-accept', function(e) {
    $.cookie('privacy', 'true', {
        expires: 90,
        path: '/'
    });
    $('#body').removeClass('opaque');
    $('#privacy-container').remove();
    if ($.cookie('privacy') == 'true') {
        window.location.reload();
    }
});
