@App.module 'FilterModule.Show', (Show, App, Backbone, Marionette, $, _) ->

  class Show.Filter extends App.Views.ItemView
    template: 'filter/show/templates/filter'