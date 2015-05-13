class MyAttribute < ActiveRecord::Base
  has_one :my_model_my_attribute
  has_one :my_model, through: :my_model_my_attribute

  # Override as_json to return specific set of attributes while to_json method has been called
  def as_json(options = {})
    {
        id: id,
        name: name,
        section_name: section_name,
        attribute_type: attribute_type,
        default_value: default_value,
        is_required: is_required,
        data_type: data_type,
        description: description,
        display_type: display_type,
        display_size: display_size,
        display_label: display_label,
        display_seq: display_seq,
        value: my_model_my_attribute.value
    }
  end
end