@App.module 'SidebarModule.Display', (Display, App, Backbone, Marionette, $, _) ->

  Display.Controller = 
    displaySidebar: ->
      # FIXME: Don't manipulate the DOM of foreign elements here
      $("body").addClass('app-sidebar--squeeze')