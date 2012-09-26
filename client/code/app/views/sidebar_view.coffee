mediator = require '../mediator'
CompositeView = require './composite_view'
StatsView = require './stats_view'
StatusView = require './status_view'
template = ss.tmpl['sidebar']

module.exports = class SidebarView extends CompositeView
  template: template

  id: 'sidebar'
  container: '#sidebar-container'
  autoRender: true

  initialize: ->
    super
    @attachView new StatusView()
    @attachView new StatsView()
    @subscribeEvent 'loginStatus', @loginStatusHandler
    @subscribeEvent 'userData', @render

  loginStatusHandler: (loggedIn) =>
    @model = if loggedIn then mediator.user else null
    @render()
