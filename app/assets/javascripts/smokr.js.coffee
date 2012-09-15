window.Smokr =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: -> 
    new Smokr.Routers.Projects()
    Backbone.history.start(pushState: true)

$(document).ready ->
  Smokr.init()
