class Smokr.Views.Project extends Backbone.View
  template: JST['project/project']
  tagName: 'li'

  initialize: ->
    @model.on('change', @render, this)
    
  showTestCase: ->
    Backbone.history.navigate("projects/#{@model.get('id')}", true)

  render: ->
    $(@el).html(@template(project: @model))
    this
