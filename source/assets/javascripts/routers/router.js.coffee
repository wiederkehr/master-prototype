class App.Routers.Router extends Backbone.Router
  routes:
    ''              : 'index'
    'topography'    : 'topography'
    'evolution'     : 'evolution'
    'collaboration' : 'collaboration'
    'citation'      : 'citation'

  initialize: ->
    @collection = new App.Collections.Examples()
    @collection.fetch()

  index: ->
    console.log 'Welcome to your / route.'
    view = new App.Views.ExamplesIndex(collection: @collection)
    $('[data-view="app-content"]').html(view.render().el)
  topography: ->
    console.log 'Welcome to your /topography route.'
  evolution: ->
    console.log 'Welcome to your /evolution route.'
  collaboration: ->
    console.log 'Welcome to your /collaboration route.'
  citation: ->
    console.log 'Welcome to your /citation route.'