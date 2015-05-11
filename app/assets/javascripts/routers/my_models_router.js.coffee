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
    alert "hello #{id}"