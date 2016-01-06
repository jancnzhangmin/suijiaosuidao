class CtsinitsController < ApplicationController
  def index

    if Admin.count == 0
      Admin.create(username:"超级管理员",login:"admin",password:"admin",password_confirmation:"admin")
    end

  end
  def new

  end

  def create

  end
end
