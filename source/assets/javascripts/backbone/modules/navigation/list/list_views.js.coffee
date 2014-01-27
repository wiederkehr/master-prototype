@App.module 'NavigationModule.List', (List, App, Backbone, Marionette, $, _) ->

  class List.Navigation extends Marionette.ItemView
    template: 'navigation/list/templates/_navigationItem'
    tagName: 'li'
    className: 'navigation__item'
    # Not necessary anymore thanks to the AppRouter
    # events: 
      # "click .navigation__link" : -> @trigger "switch:component"

  class List.NavigationItems extends Marionette.CompositeView
    template: 'navigation/list/templates/navigationItems'
    itemView: List.Navigation
    itemViewContainer: "ul"
