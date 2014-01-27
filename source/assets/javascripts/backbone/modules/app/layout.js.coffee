App.AppLayout = Backbone.Marionette.Layout.extend

  template: 'app/templates/app_layout'

  regions:
    sidebarRegion   : '[data-view="app-sidebar"]'
    navigationRegion: '[data-view="app-navigation"]'
    headerRegion    : '[data-view="app-header"]'
    introRegion     : '[data-view="app-intro"]'
    insightRegion   : '[data-view="app-insight"]'
    chartRegion     : '[data-view="app-chart"]'
    filterRegion    : '[data-view="app-filter"]'

  toggleSidebar: () ->
    # FIXME: Probably the layout shouldn't do this
    $('body').toggleClass('app-sidebar--squeeze')
    # $('[data-view="app-sidebar"]').toggleClass('app-sidebar--collapsed')
    $('[data-view="app-sidebar"]').toggleClass('app-sidebar--collapsed')

  toggleIntro: () ->
    # FIXME: Probably the layout shouldn't do this
    # $('[data-view="app-intro"]').toggleClass('app-intro--collapsed')
    $('[data-view="app-intro"]').slideToggle({duration: 300, queue: false})

  toggleInsight: () ->
    # FIXME: Probably the layout shouldn't do this
    # $('[data-view="app-insight"]').toggleClass('app-insight--collapsed')
    $('[data-view="app-insight"]').slideToggle({duration: 300, queue: false})
