class MyAttribute < ActiveRecord::Base
  has_many :my_model_my_attributes
  has_many :my_models, through: :my_model_my_attributes
end
