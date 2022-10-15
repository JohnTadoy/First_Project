class OverwatchClassController < ApplicationController
  def index
    @hero = OverwatchCharacter.all
  end

  def show
    @show = OverwatchCharacter.find(params[:id])
  end

  def search
    @find = OverwatchCharacter.where("name LIKE ?", "%" + params[:q] + "%")
  end
end
