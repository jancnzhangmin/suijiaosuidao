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


  def destroy_multiple

    @admin= Admin.find(params[:aid])
    #  @ref = @role.role_auth_refs
    AdminRoleRef.delete_all("admin_id = "+ params[:aid])
    if params[:role_ids]
      params[:role_ids].each do |t|
        AdminRoleRef.create(admin_id:params[:aid],role_id:t)
      end
      flash[:error]='更改已被成功保存！'
    end
    # RoleAuthRef.save
    # render 'show'
    redirect_to @admin
  end




  def new
  end
end
