class MyModel < ActiveRecord::Base
  has_many :my_model_my_attributes
  has_many :my_attributes, through: :my_model_my_attributes

  # Override as_json to return specific set of attributes while to_json method has been called
  def as_json(options={})
    {
      id: id,
      model_number: model_number,
      description: description,
      my_attributes: my_attributes
    }
  end
end
