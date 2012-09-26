template = ss.tmpl['tweet']
View = require './base/view'

module.exports = class TweetView extends View
  template: template
  className: 'tweet'
