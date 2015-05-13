window.BackboneRails =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
#    Main Initialization and start Backbone Application
    new BackboneRails.Routers.MyModels()
    Backbone.history.start()

$(document).ready ->
  BackboneRails.initialize()
