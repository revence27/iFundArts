$ ->
  enableNeatSignIn()
  playTheSearchGame()

enableNeatSignIn = () ->
  $('#signin').click((evt) ->
    evt.preventDefault()
    alert 'TODO: Put a popup here that enables sign-in.'
  )

playTheSearchGame = () ->
  seeker  = $('#gcse')
  seeker.hide()
  newli = $('<li></li>')
  link  = $('<a href="javascript:;">Search</a>')
  link.click((evt) ->
    me  = $(evt.target).parent()
    me.slideDown('fast', () ->
      seeker.show('fast')
      # seeker.slideUp('fast')
    )
  )
  newli.append link
  newli.insertBefore seeker
