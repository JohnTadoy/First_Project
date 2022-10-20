class OverwatchHeroController < ApplicationController
  def index
    @hero = OverwatchCharacter.page params[:page]
  end

  def show
    @show = OverwatchCharacter.find(params[:id])
  end

  def search
    search = "%#{params[:name]}%"
    hero = "%#{params[:class]}%"

    if hero == ""
      @hero = OverwatchCharacter.where("name LIKE ?", search)
      @hero_pagination = OverwatchCharacter.where("name LIKE ?", wildcard_search).page params[:page]
    else
      @hero = OverwatchCharacter.where("name LIKE ? AND overwatch_class_id = ?", search, hero)
      @hero_pagination = OverwatchCharacter.where("name LIKE ? AND overwatch_class_id = ?", search, hero).page params[:page]
    end
  end
end