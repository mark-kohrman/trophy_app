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
  
  def update
    @trophy = Trophy.find_by(id: params[:id]  )
    @trophy.update(
      metal: params[:metal] || @trophy.metal,
      color: params[:color] || @trophy.color,
      wood_type: params[:wood_type] || @trophy.wood_type,
      price: params[:price] || @trophy.price
    )
    @trophy.save
    render 'show.json.jb'
  end

  def destroy
    @trophy = Trophy.find_by(id: params[:id])
    @trophy.destroy
    render json: {message: "You're trophy was destroyed cuz you lost"}
  end
end
