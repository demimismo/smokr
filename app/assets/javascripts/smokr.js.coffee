window.Smokr =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: -> 
    new Smokr.Routers.TestCases()
    Backbone.history.start(pushState: true)

$(document).ready ->
  Smokr.init()
