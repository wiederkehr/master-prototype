@App.module 'SidebarModule.Hide', (Hide, App, Backbone, Marionette, $, _) ->

  Hide.Controller = 
    hideSidebar: ->
      # FIXME: Don't manipulate the DOM of foreign elements here
      $("body").removeClass('app-sidebar--squeeze')