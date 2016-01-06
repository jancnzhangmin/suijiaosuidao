class IndentsController < ApplicationController
  before_action :set_indent, only: [:show, :edit, :update, :destroy]

  def index
    @indents =Indent.all
  end

  def show

  end

  def create
    params.permit!
    @indent= Indent.new(params[:indent])
    if @indent.save
      redirect_to @indent
    else
      render :new
    end

  end

  def new
    @indent = Indent.new
  end



  def destroy
    @indent.destroy
    redirect_to indents_url
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_indent
    @indent = Indent.find(params[:id])
  end

end
