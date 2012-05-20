$ ->
  enableNeatSignIn()
  playTheSearchGame()
  runFacebookInit()

runFacebookInit = () ->
  window.fbAsyncInit = () ->
    initHash  =
      appId      : 'YOUR_APP_ID',
      channelUrl : "//#{document.location.host}/channel.html",
      status     : true,
      cookie     : true,
      xfbml      : true
    FB.init initHash

  # Load the SDK Asynchronously
  ((d) ->
    js  = 'facebook-jssdk'
    ref = d.getElementsByTagName('script')[0]
    id  = ref
    return if d.getElementById(id)
    js        = d.createElement('script')
    js.id     = id
    js.async  = true
    js.src    = "//connect.facebook.net/en_US/all.js"
    ref.parentNode.insertBefore js, ref
   )(document)

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
