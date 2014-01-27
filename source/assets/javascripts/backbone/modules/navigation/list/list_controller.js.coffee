@App.module 'NavigationModule.List', (List, App, Backbone, Marionette, $, _) ->

  List.Controller = 

    listNavigationItems: ->
      links = App.request 'navigation:entities'
      navigationView = @getNavigationView links
      App.layout.navigationRegion.show navigationView

      # Not necessary anymore thanks to the AppRouter
      # navigationView.on "itemview:switch:component" , (component) -> App.vent.trigger "switch:component", component

    getNavigationView: (links) ->
      new List.NavigationItems
        collection: links