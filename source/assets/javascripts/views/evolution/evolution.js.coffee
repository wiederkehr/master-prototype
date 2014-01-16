class App.Views.Evolution extends Backbone.Marionette.View
  template: ->
    return '
    <h2>Evolution <small>Activity Stream</small></h2>
    <img src="/assets/images/component_temporal.png" class="img--responsive">
      '

  initialize: ->

  render: ->
    console.log("Rendering Evolution View")
    $(@el).html(@template())
    this