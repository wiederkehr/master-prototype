@App.module 'ChartModule.Show', (Show, App, Backbone, Marionette, $, _) ->

  class Show.Chart extends App.Views.ItemView
    template: 'chart/show/templates/chart'