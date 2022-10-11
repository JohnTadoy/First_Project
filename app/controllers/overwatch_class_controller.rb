class OverwatchClassController < ApplicationController
  def index
    @classes = OverwatchClass.all
  end
end
