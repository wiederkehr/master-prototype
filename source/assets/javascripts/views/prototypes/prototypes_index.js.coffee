class App.Views.PrototypesIndex extends Backbone.Marionette.View
  template: ->
    temp = "
      <ul>
        <li><a href='/app.html#topography'>Topography</a></li>
        <li><a href='/app.html#evolution'>Evolution</a></li>
        <li><a href='/app.html#collaboration'>Collaboration</a></li>
        <li><a href='/app.html#citation'>Citation</a></li>
      </ul>
    "
    return temp

  initialize: ->
    @collection.on('reset', @render, this)

  render: ->
    console.log("Rendering templates/prototypes/index in prototypes.js.coffee")
    $(@el).html(@template(collection: @collection))
    this