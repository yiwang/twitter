mediator = require '../mediator'
View = require './base/view'
template = ss.tmpl['stats']

module.exports = class StatsView extends View
  template: template
  className: 'stats'
  tagName: 'ul'
  container: '#stats-container'

  initialize: ->
    super
    @subscribeEvent 'loginStatus', @loginStatusHandler
    @subscribeEvent 'userData', @render

  loginStatusHandler: (loggedIn) =>
    if loggedIn
      @model = mediator.user
    else
      @model = null
    @render()
