App.AppController =

  topography: ->
    App.vent.trigger "app:component:topography"

  evolution: ->
    App.vent.trigger "app:component:evolution"

  collaboration: ->
    App.vent.trigger "app:component:collaboration"
    
  citation: ->
    App.vent.trigger "app:component:citation"
