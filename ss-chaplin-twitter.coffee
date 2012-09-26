http = require("http")
ss = require("socketstream")

# sighub manager
ss.client.define "main",
  view: "index.html"
  css: ["bootstrap.css","application.styl"]
  code: [
    'libs/console-helper.js'
    'libs/jquery-1.7.2.js'
    'libs/underscore-1.3.3.js'
    'libs/backbone-0.9.2.js'
    'libs/chaplin-1.0.0-pre-1f20a2c.coffee'
    'libs/moment-1.5.0.js'
    'libs/twitter-text.js'
    'app'
  ]
  tmpl: "*"

ss.http.router.on "/", (req, res) ->
  res.serve "main"

ss.ws.transport.use require 'ss-sockjs'

# Code Formatters
ss.client.formatters.add require("ss-coffee")
ss.client.formatters.add require("ss-stylus")

# Use server-side compiled Handlebars templates.
ss.client.templateEngine.use require("ss-handlebars")

# Minimize and pack assets if SS_ENV=production
ss.client.packAssets()  if ss.env is "production"

# Start web server
server = http.Server ss.http.middleware
server.listen 8000
ss.start server
console.log 'server listen on port 8000'

exports.config =
  # See http://brunch.readthedocs.org/en/latest/config.html for documentation.
  files:
    javascripts:
      joinTo:
        'javascripts/app.js': /^app/
        'javascripts/vendor.js': /^vendor/
        'test/javascripts/test.js': /^test(\/|\\)(?!vendor)/
        'test/javascripts/test-vendor.js': /^test(\/|\\)(?=vendor)/
      order:
        # Files in `vendor` directories are compiled before other files
        # even if they aren't specified in order.before.
        before: [
          'vendor/scripts/console-helper.js',
          'vendor/scripts/jquery-1.7.2.js',
          'vendor/scripts/underscore-1.3.3.js',
          'vendor/scripts/backbone-0.9.2.js'
        ]

    stylesheets:
      joinTo:
        'stylesheets/app.css': /^(app|vendor)/
        'test/stylesheets/test.css': /^test/
      order:
        before: ['vendor/styles/bootstrap.css']

    templates:
      joinTo: 'javascripts/app.js'
