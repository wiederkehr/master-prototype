@App.module 'SidebarModule.Show', (Show, App, Backbone, Marionette, $, _) ->

  Show.Controller = 

    showSidebar: ->

      sidebarView = @getSidebarView()
      App.layout.sidebarRegion.show sidebarView

    getSidebarView: () ->
      new Show.Sidebar