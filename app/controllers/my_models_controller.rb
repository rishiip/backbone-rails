class MyModelsController < ApplicationController
  before_filter :set_modal, :only => [:update, :show]

  def index
    render :json => MyModel.includes(:my_attributes).all
  end

  def show
    render :json => @my_model
  end

  def update
    if @my_model.update_attributes(my_model_params)
      params[:my_attributes] = [] if params[:my_attributes].nil?
      if params[:my_attributes].present? then
        params[:my_attributes].each do |my_attribute|
          my_model_my_attribute = get_my_model_my_attribute(@my_model.id, my_attribute[:id])
          my_model_my_attribute.value = my_attribute[:value]
          my_model_my_attribute.save
        end
      end
    end
    render :json => :ok
  end

  private

  def get_my_model_my_attribute(my_model_id, my_attribute_id)
    MyModelMyAttribute.find_by_my_model_id_and_my_attribute_id(my_model_id, my_attribute_id)
  end

  def my_model_params
    params.require(:my_model).permit(:id, :model_number, :description)
  end

  def set_modal
    @my_model = MyModel.includes(:my_attributes).find(params[:id])
  end
end
