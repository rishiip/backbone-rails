class BackboneRails.Views.MyModelsShow extends Backbone.View

  template: JST['my_models/show']

  initialize: (options) ->
    @my_model = options.my_model

  events:
    'click #save_my_model': 'saveMyModel'

  saveMyModel: ->
    for my_attribute in @my_model.get("my_attributes")
      my_attribute.value = $(@getMyModelMyAttributeSelector(my_attribute)).val()
    @my_model.save()

  getMyModelMyAttributeSelector: (my_attribute) ->
    "#" + my_attribute.section_name.toLowerCase().replace(/[^a-z0-9]+/g, "-") + "-" + my_attribute.id

  render: ->
    $(@el).html(@template(my_model: @my_model))
    this