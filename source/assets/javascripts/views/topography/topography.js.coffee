class App.Views.Topography extends Backbone.Marionette.View
  template: ->
    return '
    <h2 class="page__subtitle">Topography <small>Topic Map</small></h2>
    <img src="/assets/images/component_topical.png" class="img--responsive">
      '

  initialize: ->

  render: ->
    console.log("Rendering Topography View")
    $(@el).html(@template())
    this