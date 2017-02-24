_run = ->
  # Runs as soon as Google API is loaded
  $('.yt_preview').first().click()
  return


$('.yt_preview').click -> makeVideoPlayer $(this).data('uid')

$(window).bindWithDelay('resize', ->
  player = $('#ytPlayer')
  player.height(player.width() / 1.777777777) if player.size() > 0
  return
, 500)
