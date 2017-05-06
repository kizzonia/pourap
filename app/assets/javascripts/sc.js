
function sound(playlist) {
  SC.get('/tracks', "/resolve/?url=https://soundcloud.com/user-901040046"
}, function(tracks) {
  var track_url = "https://soundcloud.com/user-901040046";
  SC.oEmbed(tracks[track_url].uri, {auto_play: true}, document.getElementById('target'));

});
}
window.onload = function(){
  SC.initialize({
     client_id: 'VzOa4uYG9foRP7CRQFy08N79zsmfCd9P',
     redirect_uri: 'http://pourap.com/callback'
   });
}
