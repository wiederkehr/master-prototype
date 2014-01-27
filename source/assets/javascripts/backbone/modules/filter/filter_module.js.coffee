@App.module 'FilterModule', (FilterModule, App, Backbone, Marionette, $, _) ->
  @startWithParent = false

  API = 
    
    showFilter: ->
      FilterModule.Show.Controller.showFilter()

  FilterModule.on 'start', ->
    API.showFilter()
