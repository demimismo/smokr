class Smokr.Views.TestCasesIndex extends Backbone.View
  template: JST['test_cases/index']

  events:
    'submit #new_test_case': 'createTestCase'

  initialize: ->
    @collection.on('reset', @render, this)
    @collection.on('add', @appendTestCase, this)

  render: ->
    $(@el).html(@template())
    @collection.each(@appendTestCase)
    this
    
  appendTestCase: (test_case) =>
    view = new Smokr.Views.TestCase(model: test_case)
    @$('#entries').append(view.render().el)

  createTestCase: (event) ->
    event.preventDefault()
    attributes = title: $('#new_test_case_title').val(), description: $('#new_test_case_description').val()
    @collection.create attributes,
      wait: true
      success: -> $('#new_test_case')[0].reset()
      error: @handleError
      
  handleError: (test_case, response) ->
    if response.status == 422
      errors = $.parseJSON(response.responseText).errors
      for attribute, messages of errors
        alert "#{attribute} #{message}" for message in messages
