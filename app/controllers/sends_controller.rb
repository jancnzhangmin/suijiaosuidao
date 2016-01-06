class SendsController < ApplicationController
  before_action :set_send, only: [:show, :edit, :update, :destroy]

  def index
    @sends = Send.all
  end

  def show

  end

  def create
    params.permit!
    @send = Send.new(params[:send])
    if @send.save
      redirect_to @send
    else
      render :new
    end

  end

  def new
    @send = Send.new
  end


  def edit

  end

  def update
    if @send.update(params[:send])
      render @send
    else
      render :edit
    end
  end

  def destroy
    @send.destroy
    redirect_to sends_url
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_send
    @send = Send.find(params[:id])
  end

end
