@App.module 'NavigationModule', (NavigationModule, App, Backbone, Marionette, $, _) ->
  @startWithParent = false

  API = 
    listNavigationItems: ->
      NavigationModule.List.Controller.listNavigationItems()

  NavigationModule.on 'start', ->
    API.listNavigationItems()
