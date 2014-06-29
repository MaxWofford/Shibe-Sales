// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


//Get USD/DOGE conversion rate
var dogecoinRef = new Firebase("https://publicdata-cryptocurrency.firebaseio.com/dogecoin");
dogecoinRef.child("last").on("value", showPrice);

//Update USD/DOGE conversion rate
function showPrice(snapshot) {
  rate = snapshot.val();
  document.getElementById("header-rate").innerHTML = Math.floor(1 / rate);
}

$(function(){ $(document).foundation(); });
