(function ($, root, undefined) {
    $(function () {
        "use strict";
        if($("body").scrollTop() > 70) {
            $("header").addClass("scrolled");
        } else {
            $("header").removeClass("scrolled");
        }
    })
})(jQuery, this);