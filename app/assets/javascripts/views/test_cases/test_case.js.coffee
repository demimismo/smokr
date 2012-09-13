class Smokr.Views.TestCase extends Backbone.View
  template: JST['test_cases/test_case']
  tagName: 'li'
  
  events:
    'click': 'showTestCase'

  initialize: ->
    @model.on('change', @render, this)
    
  showTestCase: ->
    Backbone.history.navigate("test_cases/#{@model.get('id')}", true)

  render: ->
    $(@el).html(@template(test_case: @model))
    this