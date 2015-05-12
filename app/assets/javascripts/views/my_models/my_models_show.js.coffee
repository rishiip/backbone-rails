class BackboneRails.Views.MyModelsShow extends Backbone.View

  template: JST['my_models/show']

  initialize: (options) ->
    @my_model = options.my_model
    @initializeSectionNameArray()

  events:
    'click #save_my_model': 'saveMyModel'
    'blur #my_model_number': 'saveMyModel'
    'blur #my_model_description': 'saveMyModel'

  saveMyModel: ->
    @setMyModelValues()
    @setMyAttributesValues()

  setMyModelValues: ->
    @my_model.set("model_number", $('#my_model_number').val())
    @my_model.set("description", $('#my_model_description').val())

  setMyAttributesValues: ->
    for my_attribute in @my_model.get("my_attributes")
      my_attribute.value = $(@getMyModelMyAttributeSelector(my_attribute)).val()
    @my_model.save()

  getMyModelMyAttributeSelector: (my_attribute) ->
    "#" + my_attribute.section_name.toLowerCase().replace(/[^a-z0-9]+/g, "-") + "-" + my_attribute.id

  initializeSectionNameArray: ->
    section_names = new Array
    for my_attribute in @my_model.get("my_attributes")
      section_names.push my_attribute.section_name
    @section_names = _.uniq(section_names)

  render: ->
    $(@el).html(@template(my_model: @my_model, section_names: @section_names))
    this