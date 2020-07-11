class Api::TrophiesController < ApplicationController

  def index
    @trophies = Trophy.all
    render 'index.json.jb'
  end
end
