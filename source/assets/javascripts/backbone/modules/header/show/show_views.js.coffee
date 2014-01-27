@App.module 'HeaderModule.Show', (Show, App, Backbone, Marionette, $, _) ->

  class Show.Header extends App.Views.ItemView
    template: 'header/show/templates/header'
    events:
      'click [data-view="toggle-sidebar"]' : -> @trigger "toggle:sidebar"
      'click [data-view="toggle-intro"]' : -> @trigger "toggle:intro"
      'click [data-view="toggle-insight"]' : -> @trigger "toggle:insight"
    modelEvents:
      "change" : "render"
    