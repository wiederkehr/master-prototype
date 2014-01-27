@App = do (Backbone, Marionette) ->

  App = new Marionette.Application
  App.rootRoute = 'topography'

  App.addRegions
    appRegion: '[data-view="app-container"]'

  App.initApplicationEvents = () ->
    App.vent.on "toggle:sidebar", () -> 
      App.model.set("sidebarVisible", not App.model.get("sidebarVisible"))
      App.layout.toggleSidebar()

    App.vent.on "toggle:intro", () -> 
      App.model.set("introVisible", not App.model.get("introVisible"))
      App.layout.toggleIntro()

    App.vent.on "toggle:insight", () -> 
      App.model.set("insightVisible", not App.model.get("insightVisible"))
      App.layout.toggleInsight()

    App.vent.on "app:component:topography", () -> console.log("Routed to app:component:topography")
    App.vent.on "app:component:evolution", () -> console.log("Routed to app:component:evolution")
    App.vent.on "app:component:collaboration", () -> console.log("Routed to app:component:collaboration")
    App.vent.on "app:component:citation", () -> console.log("Routed to app:component:citation")

  App.addInitializer ->
    App.router = new App.AppRouter()
    App.layout = new App.AppLayout()
    App.model = new App.AppModel({
      sidebarVisible  : true,
      introVisible    : true,
      insightVisible  : true,
    })

    App.appRegion.show App.layout

    App.module('SidebarModule').start()
    App.module('NavigationModule').start()
    App.module('HeaderModule').start()
    App.module('IntroModule').start()
    App.module('InsightModule').start()
    App.module('ChartModule').start()
    App.module('FilterModule').start()
    App.initApplicationEvents()

  App.on 'initialize:before', ->
    console.log 'App initialize:before'

  App.on 'initialize:after', (options) ->
    if Backbone.history
      Backbone.history.start()
      App.router.navigate(@rootRoute, trigger: true) if @getCurrentRoute() is ""
    console.log 'App initialize:after'

$(document).ready ->
  console.log 'Document:ready'
  App.start()
