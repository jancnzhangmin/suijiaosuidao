class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
    @sellers = Seller.all
    @units = Unit.all
  end

  def show

  end

  def create
    params.permit!
    @product = Product.new(params[:product])
    if @product.save
      redirect_to @product
    else
      render :new
    end

  end

  def new
    @product = Product.new
  end


  def edit

  end

  def update
    params.permit!
    if @product.update(params[:product])
      render @product
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to products_url
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_product
    @product = Product.find(params[:id])
  end

end
