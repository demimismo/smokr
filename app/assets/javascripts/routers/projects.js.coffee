class Smokr.Routers.Projects extends Backbone.Router
  routes:
    '': 'index'
    'projects/:id': 'show'

  initialize: ->
    @collection = new Smokr.Collections.Projects()
    @collection.fetch()

  index: ->
    view = new Smokr.Views.ProjectsIndex(collection: @collection)
    $('#container').html(view.render().el)

  show: (id) ->
    view = new Smokr.Views.Project()
