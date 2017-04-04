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
//= require ckeditor/init
//= require jquery
//= require bootstrap
//= require jquery.jplayer.min
//= require jquery_ujs
//= require turbolinks
//= require uisearch
//= require_tree .
//= require classie
//= require jquery.chocolat
//= require wow.min
//= require bloggers
//= require lumino.glyphs
//= require connect
$(function(){
  $(".connect-with-soundcloud a.connect").live("click", function(event){
    event.preventDefault();
    SC.Connect.open({
      redirectEndpoint: "/soundcloud/connect",
      error: function(reason){
        console.log("SoundCloud Connect failed: "+ reason);
      },
      success: function(){
        this.client.get("/me", function(me){
          $(".connect-with-soundcloud").addClass("connected");
          $(".visible-when-logged-in").removeClass("hidden");

          $(".connect-with-soundcloud .username").html(me.username);
        });
      }
    });
  });

})
