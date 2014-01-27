@App.module 'IntroModule.Show', (Show, App, Backbone, Marionette, $, _) ->

  Show.Controller = 

    showIntro: ->

      introView = @getIntroView()
      App.layout.introRegion.show introView

    getIntroView: () ->
      new Show.Intro