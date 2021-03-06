class RequestsController < ApplicationController
  def index
    @requests = Request.all
  end

  def new
    @request = Request.new
  end

  def create
    @request = Request.new(request_params)
    if @request.save
      redirect_to request_path(@request)
    else
      render 'new'
    end
  end

  def show
    @request = Request.find(params[:id])
    @quantity = Quantity.new
  end

  private

  def request_params
    params.require(:request).permit(:date, :name, :description, :photo)
  end
end
