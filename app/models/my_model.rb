class MyModel < ActiveRecord::Base
  has_many :my_model_my_attributes
  has_many :my_attributes, through: :my_model_my_attributes
end
