@App.module 'HeaderModule.Show', (Show, App, Backbone, Marionette, $, _) ->

  Show.Controller = 

    viewModel: undefined

    showHeader: ->
      headerView = @getHeaderView()
      App.layout.headerRegion.show headerView

      headerView.on "toggle:sidebar" , () => 
        App.vent.trigger("toggle:sidebar")
        @viewModel.set("sidebarVisible", not @viewModel.get("sidebarVisible"))

      headerView.on "toggle:intro" , () => 
        App.vent.trigger("toggle:intro")
        @viewModel.set("introVisible", not @viewModel.get("introVisible"))

      headerView.on "toggle:insight" , () => 
        App.vent.trigger("toggle:insight")
        @viewModel.set("insightVisible", not @viewModel.get("insightVisible"))

    getHeaderView: () ->
      @viewModel = new Backbone.Model(
        sidebarVisible: true
        introVisible: true
        insightVisible: true
        )
      new Show.Header(model:@viewModel)
