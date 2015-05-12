class BackboneRails.Views.MyModelsShow extends Backbone.View

  template: JST['my_models/show']

  initialize: (options) ->
    @my_model = options.my_model
    console.log @my_model
    @my_attributes = options.my_attributes
    @initializeMyModelMyAttributeCollection()

  initializeMyModelMyAttributeCollection: ->
    console.log "initialize"
#    _.first(@my_model.get("my_attributes")).value = "Rishi Pithadiya"
#    console.log _.first(@my_model.get("my_attributes")).value
#    @my_model.save({async:false})
#    @my_model.set("description", "First test model for Bacancy Technologies Limited - Updated")
#    @my_model.save()

  render: ->
    $(@el).html(@template(my_model: @my_model))
    this