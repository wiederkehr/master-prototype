class App.Routers.Router extends Backbone.Router
  routes:
    ''              : 'topography'
    'topography'    : 'topography'
    'evolution'     : 'evolution'
    'collaboration' : 'collaboration'
    'citation'      : 'citation'

  topography: ->
    console.log 'Welcome to your /topography route.'
  evolution: ->
    console.log 'Welcome to your /evolution route.'
  collaboration: ->
    console.log 'Welcome to your /collaboration route.'
  citation: ->
    console.log 'Welcome to your /citation route.'