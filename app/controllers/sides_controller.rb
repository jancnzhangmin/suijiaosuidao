class SidesController < ApplicationController
  def index
    @advertisements = Advertisement.all
    @clas = Cla.all
    @indent = Indent.new
    @sellers =Seller.all

  end

  def show

    @advertisements = Advertisement.all
    @seller = Seller.find(params[:id])
    @products = @seller.products


  end

  def new
  end
end
