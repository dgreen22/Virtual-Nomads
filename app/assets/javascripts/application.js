// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= bootstrap.min.js
//= require ckeditor/init
//= require ckeditor/config
//= require_tree .

$(document).ready(function(){
	$(".full-width").fadeIn(2500);

	$(".index-thumbnails").hover(function(){
		$(this).animate({opacity: 0.60},"fast")
	},
	function(){
		$(this).animate({opacity: 1},"fast")
	});

	setTimeout(function(){
	$("#subscribeModal").modal("show"); 
	}, 
	5000
	);

	$(".close").on("click", function(){
		$("#subscribeModal").modal("hide");
	});

	$(".social").mouseover(
		function(){
		  $(this).animate({height: 116, width: 116},"fast");
		}
	);

	$(".social").mouseout(
		function(){
		  $(this).animate({height: 96, width: 96},"fast");
		}
	);

	var $root = $('html, body');
    $('.arrow a').click(function() {
        var href = $.attr(this, 'href');
        $root.animate({
            scrollTop: $(href).offset().top -55
        }, 500, function () {
            window.location.hash = href;
        });
        return false;
    });

});