@App.module 'ChartModule', (ChartModule, App, Backbone, Marionette, $, _) ->
  @startWithParent = false

  API = 
    
    showChart: ->
      ChartModule.Show.Controller.showChart()

  ChartModule.on 'start', ->
    API.showChart()
