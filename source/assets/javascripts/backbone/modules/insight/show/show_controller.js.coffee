@App.module 'InsightModule.Show', (Show, App, Backbone, Marionette, $, _) ->

  Show.Controller = 

    showInsight: ->

      insightView = @getInsightView()
      App.layout.insightRegion.show insightView

    getInsightView: () ->
      new Show.Insight