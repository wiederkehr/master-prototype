class App.Routers.Router extends Backbone.Router
  routes:
    ''              : 'index'
    'topography'    : 'topography'
    'evolution'     : 'evolution'
    'collaboration' : 'collaboration'
    'citation'      : 'citation'

  initialize: ->
    @collection = new App.Collections.Prototypes()
    @collection.fetch()

  index: ->
    console.log 'Welcome to your / route.'
    view = new App.Views.PrototypesIndex(collection: @collection)
    $('[data-view="app-content"]').html(view.render().el)
  topography: ->
    console.log 'Welcome to your /topography route.'
    view = new App.Views.Topography()
    $('[data-view="app-content"]').html(view.render().el)
  evolution: ->
    console.log 'Welcome to your /evolution route.'
    view = new App.Views.Evolution()
    $('[data-view="app-content"]').html(view.render().el)
  collaboration: ->
    console.log 'Welcome to your /collaboration route.'
    view = new App.Views.Collaboration()
    $('[data-view="app-content"]').html(view.render().el)
  citation: ->
    console.log 'Welcome to your /citation route.'
    view = new App.Views.Citation()
    $('[data-view="app-content"]').html(view.render().el)