@App.module 'IntroModule', (IntroModule, App, Backbone, Marionette, $, _) ->
  @startWithParent = false

  API = 
    
    showIntro: ->
      IntroModule.Show.Controller.showIntro()

  IntroModule.on 'start', ->
    API.showIntro()
