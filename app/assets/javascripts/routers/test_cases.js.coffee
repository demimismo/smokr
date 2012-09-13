class Smokr.Routers.TestCases extends Backbone.Router
  routes:
    '': 'index'
    'test_cases/:id': 'show'

  initialize: ->
    @collection = new Smokr.Collections.TestCases()
    @collection.fetch()

  index: ->
    view = new Smokr.Views.TestCasesIndex(collection: @collection)
    $('#container').html(view.render().el)

  show: (id) ->
    alert "TestCase #{id}"
