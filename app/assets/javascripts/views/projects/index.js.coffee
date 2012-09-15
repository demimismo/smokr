class Smokr.Views.ProjectsIndex extends Backbone.View
  template: JST['projects/index']

  events:
    'submit #new_project': 'createProject'

  initialize: ->
    @collection.on('reset', @render, this)
    @collection.on('add', @appendProject, this)

  render: ->
    $(@el).html(@template())
    @collection.each(@appendProject)
    this
    
  appendProject: (project) =>
    view = new Smokr.Views.Project(model: project)
    @$('#projects').append(view.render().el)

  createProject: (event) ->
    event.preventDefault()
    attributes = name: $('#new_project_name').val()
    @collection.create attributes,
      wait: true
      success: -> $('#new_project')[0].reset()
      error: @handleError
      
  handleError: (project, response) ->
    if response.status == 422
      errors = $.parseJSON(response.responseText).errors
      for attribute, messages of errors
        alert "#{attribute} #{message}" for message in messages
