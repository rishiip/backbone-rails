class BackboneRails.Routers.MyModels extends Backbone.Router

  routes:
    '': 'index'
    'my_models/:id': 'show'

  initialize: ->
    @collection = new BackboneRails.Collections.MyModels()
    @collection.fetch({async:false})

  index: ->
    view = new BackboneRails.Views.MyModelsIndex(collection: @collection)
    $("#container").html(view.render().el)

  show: (id) ->
    my_model = @collection.get(id)
    my_attributes = new BackboneRails.Collections.MyAttributes()
    my_attributes.url = "/my_models/#{id}/get_my_attributes"
    my_attributes.fetch({async:false})
    view = new BackboneRails.Views.MyModelsShow(
      my_model: my_model
      my_attributes: my_attributes
    )
    $("#container").html(view.render().el)