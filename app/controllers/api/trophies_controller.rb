class Api::TrophiesController < ApplicationController

  def index
    @trophies = Trophy.all
    render 'index.json.jb'
  end

  def show
    @trophy = Trophy.find_by(id: params[:id])
    render 'show.json.jb'
  end
end
