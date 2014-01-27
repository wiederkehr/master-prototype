@App.module 'IntroModule.Show', (Show, App, Backbone, Marionette, $, _) ->

  class Show.Intro extends App.Views.ItemView
    template: 'intro/show/templates/intro'