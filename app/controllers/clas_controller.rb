class ClasController < ApplicationController
  before_action :set_cla, only: [:show, :edit, :update, :destroy]

  def index
    @clas = Cla.all
  end


  def create
    params.permit!
    @cla = Cla.new(params[:cla])
    if  @cla.save
      redirect_to clas_url
    else
      render :new
    end

  end

  def new
    @cla = Cla.new
  end

  def edit

  end

    def update
      if @cla.update(params[:cla])
        redirect_to clas_url
      else
        render :edit
      end
    end

  def destroy
    @cla.destroy
    redirect_to clas_url
  end

  private

  def set_cla
    @cla = Cla.find(params[:id])
  end

end
