class BackboneRails.Views.MyModelsIndex extends Backbone.View

  template: JST['my_models/index']

  render: ->
#    Render templates/my_models/index template within "#container" div and passing MyModel collection
    $(@el).html(@template(my_models: @collection))
    this