# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('#gri_search_page').typeahead
    name: "search"
    remote: "/items/autocomplete?query=%QUERY"

    $('#financial').dataTable
    	bSearchable: false
    	bFilter: false
    	iDisplayLength: 50

    $('.financialB').dataTable
    	bSearchable: false
    	bFilter: false
    	iDisplayLength: 50

    $('.financialC').dataTable
    	bSearchable: false
    	bFilter: false
    	iDisplayLength: 50

