(function (i, s, o, g, r, a, m) {
    i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
        (i[r].q = i[r].q || []).push(arguments)
    }, i[r].l = 1 * new Date(); a = s.createElement(o),
m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
})(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
ga('create', 'UA-40413119-1', 'bootply.com');
ga('send', 'pageview');


(function ($) {
    $(document).ready(function () {
        VideoResize();
        SetPinterestShare();
    });
})(jQuery);

function SetPinterestShare() {
    var siteURL = window.location.protocol + "//"+ window.location.host ;
    var logoUrl = $("#dnn_dnnLOGO_imgLogo").attr("src");
    var href = "http://www.pinterest.com/pin/create/button/?url=" + window.location.href;
    
    if ((logoUrl == undefined) || (siteURL.toUpperCase().indexOf("DNNDEV.ME", 0) > 0) || (siteURL.toUpperCase().indexOf("LOCALHOST", 0) > 0)) {
        logoUrl = "//www.vignahara.com/portals/0/images/logo/VignaharaLogo255.png";
        href = href + "&media=" + logoUrl;
    }
    else {
        href = href + "&media=" + siteURL + logoUrl;
    }
    href = href + "&description=" + document.title;
    $("#pinterestShare").attr("href", encodeURI(href));
}


function VideoResize() {
    var $allVideos = $("iframe[src^='http://player.vimeo.com'], iframe[src^='http://www.youtube.com'], object, embed"),
    $fluidEl = $("figure");

    $allVideos.each(function () {
        $(this)
          // jQuery .data does not work on object/embed elements
        .attr('data-aspectRatio', this.height / this.width)
	    .removeAttr('height')
	    .removeAttr('width');
    });

    $(window).resize(function () {

        var newWidth = $fluidEl.width();
        $allVideos.each(function () {

            var $el = $(this);
            $el
                .width(newWidth)
                .height(newWidth * $el.attr('data-aspectRatio'));

        });

    }).resize();
}


(function (d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&appId=1495431987370554&version=v2.2";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));

!function (d, s, id) { var js, fjs = d.getElementsByTagName(s)[0], p = /^http:/.test(d.location) ? 'http' : 'https'; if (!d.getElementById(id)) { js = d.createElement(s); js.id = id; js.src = p + '://platform.twitter.com/widgets.js'; fjs.parentNode.insertBefore(js, fjs); } }(document, 'script', 'twitter-wjs');

(function (d) {
    var f = d.getElementsByTagName('SCRIPT')[0], p = d.createElement('SCRIPT');
    p.type = 'text/javascript';
    p.async = true;
    p.src = '//assets.pinterest.com/js/pinit.js';
    f.parentNode.insertBefore(p, f);
}(document));