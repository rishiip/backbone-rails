class BackboneRails.Routers.MyModels extends Backbone.Router

  routes:
    '': 'index'
    'my_models/:id': 'show'

  initialize: ->
    @collection = new BackboneRails.Collections.MyModels()
    @collection.fetch({async:false})

  index: ->
    view = new BackboneRails.Views.MyModelsIndex(collection: @collection)
    $("#my_model").html(view.render().el)

  show: (id) ->
    view = new BackboneRails.Views.MyModelsShow(my_model: @collection.get(id))
    $("#my_model").html(view.render().el)
    view.initializeEditorOnTextArea()
