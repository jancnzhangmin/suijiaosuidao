class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show

  end

  def create
    params.permit!
    @user = User.new(params[:user])
    if @user.save
      redirect_to @user
    else
      render :new
    end

  end

  def new
    @user = User.new
  end


  def edit

  end

  def update
    if @user.update(params[:user])
      render @user
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to users_url
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

end
