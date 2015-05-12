class BackboneRails.Views.MyModelsIndex extends Backbone.View

  template: JST['my_models/index']

  render: ->
    $(@el).html(@template(my_models: @collection))
    this