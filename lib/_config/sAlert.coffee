Meteor.startup ->
  if Meteor.isClient
    sAlert.config
      effect: "stackslide"
      position: "top-left"
      timeout: 5000
      html: false
      onRouteClose: true
      stack: false
