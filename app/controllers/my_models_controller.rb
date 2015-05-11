class MyModelsController < ApplicationController

  def index
    render :json => MyModel.all
  end

  def update
    render :json => MyModel.update(params[:id], params[:my_model])
  end
end
