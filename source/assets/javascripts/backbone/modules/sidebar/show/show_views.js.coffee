@App.module 'SidebarModule.Show', (Show, App, Backbone, Marionette, $, _) ->

  class Show.Sidebar extends App.Views.ItemView
    template: 'sidebar/show/templates/sidebar'