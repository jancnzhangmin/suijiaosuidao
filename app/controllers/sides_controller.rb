class SidesController < ApplicationController
  def index
    @advertisements = Advertisement.all
    @clas = Cla.all
    @indent = Indent.new
    @sellers = @sidecla.sellers
  end

  def show
  end

  def new
  end
end
