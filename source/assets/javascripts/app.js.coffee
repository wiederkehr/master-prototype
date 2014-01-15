window.App =
  Models:       {}
  Collections:  {}
  Views:        {}
  Routers:      {}

  init: ->
    console.log("Initialized Backbone application")
    new App.Routers.Router
    Backbone.history.start()

  regions:
    headerRegion : '[data-view="app-header"]'
    mainRegion : '[data-view="app-content"]'
    footerRegion : '[data-view="app-footer"]'

$(document).ready ->
  App.init()