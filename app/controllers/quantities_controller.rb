class QuantitiesController < ApplicationController
  def index
    @request = Request.find(params[:request_id])
  end

  def new
    # @breed = Breed.new
    @request = Request.find(params[:request_id])
    # @quantity = Quantity.new(request_id: @request.id)
    @quantity = @request.quantities.new
  end

  def create
    @request = Request.find(params[:request_id])
    @quantity = @request.quantities.new(quantity_params)
    if @quantity.save!
      redirect_to request_path(@request)
    else
      render :new
    end
  end

  def destroy
    quantity = Quantity.find(params[:id])
    request = quantity.request
    quantity.destroy
    redirect_to request_path(request)
  end

  private

  def quantity_params
    params.require(:quantity).permit(:number, :breed_id, :request)
  end
end
