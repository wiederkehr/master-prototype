@App.module 'ChartModule.Show', (Show, App, Backbone, Marionette, $, _) ->

  Show.Controller = 

    showChart: ->

      chartView = @getChartView()
      App.layout.chartRegion.show chartView

    getChartView: () ->
      new Show.Chart