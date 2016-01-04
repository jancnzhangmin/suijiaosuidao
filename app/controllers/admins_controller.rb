class AdminsController < ApplicationController
  def index
    @admins = Admin.all
  end

  def show
  end

  def create

    @admin = Admin.new(params[:admin])
    @admin.save
    redirect_to @admin

  end

  def new


  end

  def edit
  end

  def destroy
    @admin.destroy
    respond_to do |format|
      format.html { redirect_to admins_url, notice: 'Admin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

end
