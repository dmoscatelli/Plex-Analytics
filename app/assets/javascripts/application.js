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
//= require items.coffee
//= require cube
//= require smileys
//= require dataTables/jquery.dataTables


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


    // Write on keyup event of keyword input element
    //For fuzzy finder on search FS statements page
   jQuery(document).click(function () {
            $("#search-fs").keyup(function(){
                _this = this;

                // Show only matching TR, hide rest of them
                $.each($("#financial tbody tr"), function() {
                    if($(this).text().toLowerCase().indexOf($(_this).val().toLowerCase()) === -1)
                       $(this).hide();
                    else
                       $(this).show();                
                });
            }); 


// For the search box on the FS tabs
        $('#search-fs').keyup(function() {
            $('#display').text($(this).val());
            $('.display-text').css({'box-shadow' : '0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24)'});
            $('#value').text($("#financial tbody tr:visible:first td:last").text());
            $('#watermark').text($("#financial tbody tr:visible:first td:first").text());
             if (!this.value) {
                $('.display-text').css({'box-shadow' : 'none'});
                $('#value').text("");
                $('#watermark').text("");
            }
        });
    });










	