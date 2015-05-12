class MyModelsController < ApplicationController
  before_filter :set_modal, :only => [:update]

  def index
    render :json => MyModel.all
  end

  def update
    if @my_model.update_attributes(my_model_params)
      params[:my_attributes].each do |my_attribute|
        my_model_my_attribute = get_my_model_my_attribute(@my_model.id, my_attribute[:id])
        my_model_my_attribute.value = my_attribute[:value]
        my_model_my_attribute.save!
      end
    end
    render :json => :ok
  end

  def get_my_attributes
    render :json => MyModel.find_by_id(params[:id]).my_attributes
  end

  def get_value
    render :json => get_my_model_my_attribute(params[:my_model_id], params[:id])
  end

  private

  def get_my_model_my_attribute(my_model_id, my_attribute_id)
    MyModelMyAttribute.find_by_my_model_id_and_my_attribute_id(my_model_id, my_attribute_id)
  end

  def my_model_params
    params.require(:my_model).permit(:model_number, :description, :my_attributes)
  end

  def set_modal
    @my_model = MyModel.find(params[:id])
  end
end
