class LoginsController < ApplicationController

  def new

  end


  def create
    admin = Admin.find_by(login:params[:login][:login])
    if admin && admin.authenticate(params[:login][:password])
      session[:admin_id]= admin.id
      session[:admin_name]=admin.login
      redirect_to admins_path
    else
      @check="err"
      #redirect_to pubs_path
      redirect_to action: 'new',id:0
    end
  end

end
