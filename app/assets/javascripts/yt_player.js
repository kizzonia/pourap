window.player = null; // <-- change here
window.onYouTubeIframeAPIReady = function() {  // <-- change here
  alert('this does not get called')
  player = new YT.Player('player-wrapper', {
    height:  player_wrapper.width() / 1.777777777,
    width: '100%',
    videoId: video,
    events: {
      'onReady': onPlayerReady,
      'onStateChange': onPlayerStateChange
    }
  });
}

window.onPlayerReady = function(event) {  // <-- change here
  event.target.playVideo();
}

window.done = false;  // <-- change here
window.onPlayerStateChange = function(event) {  // <-- change here
  if (event.data == YT.PlayerState.PLAYING && !done) {
    setTimeout(stopVideo, 6000);
    done = true;
  }
}
window.stopVideo = function() {  // <-- change here
  player.stopVideo();
}
