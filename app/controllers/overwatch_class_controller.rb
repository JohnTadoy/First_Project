class OverwatchClassController < ApplicationController
  def index
    @hero = OverwatchCharacter.all
  end

  def show
    @show = OverwatchCharacter.find(params[:id])
  end
end
