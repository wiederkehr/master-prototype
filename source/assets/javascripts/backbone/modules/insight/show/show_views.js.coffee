@App.module 'InsightModule.Show', (Show, App, Backbone, Marionette, $, _) ->

  class Show.Insight extends App.Views.ItemView
    template: 'insight/show/templates/insight'