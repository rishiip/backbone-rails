class BackboneRails.Routers.MyModels extends Backbone.Router

  routes:
    '': 'index'
    'my_models/:id': 'show'

  initialize: ->
#    Ajax call for fetching collection of MyModel along with MyAttributes and values in foam of json
    @collection = new BackboneRails.Collections.MyModels()
    @collection.fetch({async:false})

  index: ->
#    Passing MyModel collection to index view
    view = new BackboneRails.Views.MyModelsIndex(collection: @collection)
    $("#my_model").html(view.render().el)

  show: (id) ->
#    Passing single MyModel to show view
    view = new BackboneRails.Views.MyModelsShow(my_model: @collection.get(id))
    $("#my_model").html(view.render().el)
#    Call method to apply jQuery after template has been rendered
    view.initializeEditorOnTextArea()
