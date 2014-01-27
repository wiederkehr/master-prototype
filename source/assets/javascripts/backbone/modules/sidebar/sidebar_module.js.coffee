@App.module 'SidebarModule', (SidebarModule, App, Backbone, Marionette, $, _) ->
  @startWithParent = false

  API = 
    showSidebar: ->
      SidebarModule.Show.Controller.showSidebar()
    displaySidebar: ->
      SidebarModule.Display.Controller.displaySidebar()
    hideSidebar: ->
      SidebarModule.Hide.Controller.hideSidebar()

  SidebarModule.on 'start', ->
    API.showSidebar()