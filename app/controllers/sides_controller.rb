class SidesController < ApplicationController
  def index
    @advertisements = Advertisement.all
    @clas = Cla.all
    @indent = Indent.new

  end

  def show
  end

  def new
  end
end
