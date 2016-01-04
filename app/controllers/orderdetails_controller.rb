class OrderdetailsController < ApplicationController
  before_action :set_orderdetail, only: [:show, :edit, :update, :destroy]

  def index
    @orderdetails =Orderdetail.all
  end

  def show

  end

  def create
    params.permit!
    @orderdetail = Orderdetail.new(params[:orderdetail])
    if @orderdetail.save
      redirect_to @orderdetail
    else
      render :new
    end

  end

  def new
    @orderdetail = Orderdetail.new
  end



  def destroy
    @orderdetail.destroy
    redirect_to orderdetails_url
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_orderdetail
    @orderdetail = Orderdetail.find(params[:id])
  end

end