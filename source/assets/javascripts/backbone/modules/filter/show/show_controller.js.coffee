@App.module 'FilterModule.Show', (Show, App, Backbone, Marionette, $, _) ->

  Show.Controller = 

    showFilter: ->

      filterView = @getFilterView()
      App.layout.filterRegion.show filterView

    getFilterView: () ->
      new Show.Filter