class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  def index
    @orders =Order.all
  end

  def show

  end

  def create
    params.permit!
    @order= Order.new(params[:order])
    if @order.save
      redirect_to @order
    else
      render :new
    end

  end

  def new
    @order = Order.new
  end



  def destroy
    @order.destroy
    redirect_to orders_url
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_order
    @order = Order.find(params[:id])
  end

end