class UnitsController < ApplicationController
  before_action :set_unit, only: [:show, :edit, :update, :destroy]

  def index
    @units = Unit.all
  end


  def create
    params.permit!
    @unit = Unit.new(params[:unit])
    if  @unit.save
      redirect_to units_url
    else
      render :new
    end

  end

  def new
    @unit = Unit.new
  end

  def edit
    params.permit!
    if @unit.update(params[:unit])
      redirect_to units_url
    else
      render :edit
    end

  end

  def update
    if @unit.update(params[:unit])
      redirect_to units_url
    else
      render :edit
    end
  end

  def destroy
    @unit.destroy
    redirect_to units_url
  end

  private

  def set_unit
    @unit = Unit.find(params[:id])
  end

end
