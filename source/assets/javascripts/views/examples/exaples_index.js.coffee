class App.Views.ExamplesIndex extends Backbone.Marionette.View
  template: ->
    return 'Examples View has been loaded'

  initialize: ->
    @collection.on('reset', @render, this)

  render: ->
    console.log("Rendering templates/examples/index in examples.js.coffee")
    $(@el).html(@template(collection: @collection))
    this