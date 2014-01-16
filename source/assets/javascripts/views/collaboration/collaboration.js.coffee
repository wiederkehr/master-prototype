class App.Views.Collaboration extends Backbone.Marionette.View
  template: ->
    return '
    <h2>Collaboration <small>Institution Map</small></h2>
    <img src="/assets/images/component_spatial.png" class="img--responsive">
      '

  initialize: ->

  render: ->
    console.log("Rendering Collaboration View")
    $(@el).html(@template())
    this