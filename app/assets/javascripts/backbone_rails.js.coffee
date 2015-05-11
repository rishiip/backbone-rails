window.BackboneRails =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new BackboneRails.Routers.MyModels()
    Backbone.history.start()

$(document).ready ->
  BackboneRails.initialize()
