@App.module 'Entities', (Entities, App, Backbone, Marionette, $, _) ->

  class Entities.Component extends Entities.Model

  class Entities.ComponentCollection extends Entities.Collection
    model: Entities.Component

  Entities.components = new Entities.ComponentCollection [
    { 
      id      : 'topography'
      name    : 'Topography'
      url     : 'topography'
      intro   : 'Introduction to the topography component'
    }
    {
      id      : 'evolution'
      name    : 'Evolution'
      url     : 'evolution'
      intro   : 'Introduction to the evolution component'
    }
    {
      id      : 'collaboration'
      name    : 'Collaboration'
      url     : 'collaboration'
      intro   : 'Introduction to the … componencollaboration'
    }
    {
      id      : 'citation'
      name    : 'Citation'
      url     : 'citation'
      intro   : 'Introduction to the citation component'
    }
  ]

  API =
    getComponents: ->
      Entities.components

  App.reqres.setHandler 'navigation:entities', ->
    API.getComponents()