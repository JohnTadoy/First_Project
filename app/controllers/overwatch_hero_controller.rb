class OverwatchHeroController < ApplicationController
  def index
    @hero = OverwatchCharacter.page params[:page]
  end

  def show
    @show = OverwatchCharacter.find(params[:id])
  end

  def search
    search = "%#{params[:q]}%"
    hero = "%#{params[:class]}%"

    if hero == ""
      @hero = OverwatchCharacter.where("name LIKE ?", search)
    else
      @hero = OverwatchCharacter.where("name LIKE ? AND overwatch_class_id LIKE ?", search, hero)
    end
  end
end