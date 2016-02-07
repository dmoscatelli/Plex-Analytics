// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery-ui
//= require jquery.turbolinks
//= require jquery_ujs
//= require jquery.min
//= require bootstrap.min
//= require jquery.isotope.min
//= require easing
//= require jquery.ui.totop
//= require ender
//= require owl.carousel
//= require jquery.fitvids
//= require jquery.plugin
//= require wow.min
//= require jquery.magnific-popup.min
//= require jquery.stellar
//= require typed
//= require jquery.scrollto
//= require custom
//= require gri_items.coffee
//= require cube
//= require smileys


var mywindow = $(window);
var mypos = mywindow.scrollTop();
mywindow.scroll(function() {
    if(mywindow.scrollTop() > mypos)
    {
        /*$('.sidebar-nav').fadeOut(); */
    }
    else
    {
        $('.sidebar-nav').fadeIn();
    }
    mypos = mywindow.scrollTop();
 });








	