class AdvertisementsController < ApplicationController
  before_action :set_advertisement, only: [:show, :edit, :update, :destroy]

  def index
    @advertisements = Advertisement.all
  end

  def show

  end

  def create
    params.permit!
    @advertisement = Advertisement.new(params[:advertisement])
    if @advertisement.save
      redirect_to @advertisement
    else
      render :new
    end

  end

  def new
    @advertisement = Advertisement.new
  end


  def edit

  end

  def update
    params.permit!
    if @advertisement.update(params[:advertisement])
      render @advertisement
    else
      render :edit
    end
  end


  def destroy
    @advertisement.destroy
    redirect_to advertisements_url
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_advertisement
    @advertisement = Advertisement.find(params[:id])
  end

end

