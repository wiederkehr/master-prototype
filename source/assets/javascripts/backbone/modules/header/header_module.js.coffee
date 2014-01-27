@App.module 'HeaderModule', (HeaderModule, App, Backbone, Marionette, $, _) ->
  @startWithParent = false

  API = 
    showHeader: ->
      HeaderModule.Show.Controller.showHeader()

  HeaderModule.on 'start', ->
    API.showHeader()

  # Auf die model events hören und methoden im controller ausführen