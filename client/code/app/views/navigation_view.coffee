mediator = require '../mediator'
View = require './base/view'
template = ss.tmpl['navigation']

module.exports = class NavigationView extends View
  # This is a workaround.
  # In the end you might want to used precompiled templates.
  template: template

  id: 'navigation'
  container: '#navigation-container'
  autoRender: true

  initialize: ->
    super
    #console.debug 'NavigationView#initialize'
    @subscribeEvent 'loginStatus', @render
    @subscribeEvent 'startupController', @render
