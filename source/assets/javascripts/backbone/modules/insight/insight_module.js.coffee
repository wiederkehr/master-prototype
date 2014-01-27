@App.module 'InsightModule', (InsightModule, App, Backbone, Marionette, $, _) ->
  @startWithParent = false

  API = 
    
    showInsight: ->
      InsightModule.Show.Controller.showInsight()

  InsightModule.on 'start', ->
    API.showInsight()
