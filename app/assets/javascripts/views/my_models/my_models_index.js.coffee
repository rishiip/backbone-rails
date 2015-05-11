class BackboneRails.Views.MyModelsIndex extends Backbone.View

  template: JST['my_models/index']

  initialize: ->
    @collection.on('reset', @render, this)

  render: ->
    $(@el).html(@template(my_models: @collection))
    this