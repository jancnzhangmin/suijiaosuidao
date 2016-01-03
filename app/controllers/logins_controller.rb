class LoginsController < ApplicationController
  def index
    @admin=Admin.all
  end
end
