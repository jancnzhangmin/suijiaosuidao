class SellersController < ApplicationController
  before_action :set_seller, only: [:show, :edit, :update, :destroy]

  def index
    @sellers = Seller.all
    @clas = Cla.all
  end

  def show

  end

  def create
    params.permit!
    @seller = Seller.new(params[:seller])
    if @seller.save
      redirect_to @seller
    else
      render :new
    end

  end

  def new
    @seller = Seller.new
  end


  def edit

  end

  def update
    params.permit!
    if @seller.update(params[:seller])
      redirect_to @seller
    else
      render :edit
    end
  end

  def destroy
    @seller.destroy
    redirect_to sellers_url
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_seller
    @seller = Seller.find(params[:id])
  end

end
