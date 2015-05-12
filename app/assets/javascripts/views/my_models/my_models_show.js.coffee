class BackboneRails.Views.MyModelsShow extends Backbone.View

  template: JST['my_models/show']

  initialize: (options) ->
    @my_model = options.my_model
    @temp_array = @my_model.get("my_attributes")

  events:
    'click #save_my_model': 'saveMyModel'

  saveMyModel: ->
    for my_attribute in @my_model.get("my_attributes")
      my_model_my_attribute_selector = "#" + my_attribute.section_name.toLowerCase().replace(/[^a-z0-9]+/g, "-") + "-" + my_attribute.id
      my_attribute.value = $(my_model_my_attribute_selector).val()
    @my_model.save()

  render: ->
    $(@el).html(@template(my_model: @my_model))
    this