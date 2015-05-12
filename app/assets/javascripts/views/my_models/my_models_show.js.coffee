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
    @saveIfChanged()

  setMyModelValues: ->
    @my_model.set("model_number", $('#my_model_number').val())
    @my_model.set("description", $('#my_model_description').val())

  setMyAttributesValues: ->
    for my_attribute in @my_model.get("my_attributes")
      my_attribute.value = $(@getMyModelMyAttributeSelector(my_attribute)).val()

  saveIfChanged: ->
    @fetchCurrentModel()
    @updated_my_attributes = new Array
    for my_attribute in @my_model.get("my_attributes")
      unless _.isEqual(my_attribute, _.findWhere(@fetched_model.get("my_attributes"), {id : my_attribute.id}))
        @updated_my_attributes.push my_attribute

    unless _.isEqual(@fetched_model.attributes, @my_model.attributes)
      @my_model.set("my_attributes", @updated_my_attributes)
      @my_model.save()
      @my_model.set("my_attributes", @fetched_model.get("my_attributes"))

  fetchCurrentModel: ->
    @fetched_model = new BackboneRails.Collections.MyModels()
    @fetched_model.url = "/my_models/#{@my_model.id}"
    @fetched_model.fetch({async:false})
    @fetched_model = _.first(@fetched_model.models)

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