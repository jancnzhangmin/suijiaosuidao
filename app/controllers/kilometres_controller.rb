class KilometresController < ApplicationController
  before_action :set_kilometre, only: [:show, :edit, :update, :destroy]

  def index
    @kilometres = Kilometre.all
  end


  def create
    params.permit!
    @kilometre = Kilometre.new(params[:kilometre])
    if  @kilometre.save
      redirect_to kilometres_url
    else
      render :new
    end

  end

  def new
    @kilometre = Kilometre.new
  end

  def edit

  end

  def update
    params.permit!
    if @kilometre.update(params[:kilometre])
      redirect_to kilometres_url
    else
      render :edit
    end
  end

  def destroy
    @kilometre.destroy
    redirect_to kilometres_url
  end

  private

    def set_kilometre
    @kilometre = Kilometre.find(params[:id])
    end

end