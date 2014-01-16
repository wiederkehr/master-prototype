class App.Views.Citation extends Backbone.Marionette.View
  template: ->
    return '
    <h2>Citation <small>Author Network</small></h2>
    <img src="/assets/images/component_relational.png" class="img--responsive">
      '

  initialize: ->

  render: ->
    console.log("Rendering Citation View")
    $(@el).html(@template())
    this