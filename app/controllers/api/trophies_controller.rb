class Api::TrophiesController < ApplicationController

  def index
    @trophies = Trophy.all
    render 'index.json.jb'
  end

  def show
    @trophy = Trophy.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @trophy = Trophy.new(
      metal: params[:metal],
      color: params[:color],
      wood_type: params[:wood_type],
      price: params[:price]
    )
    @trophy.save
    render 'show.json.jb'
  end
end
