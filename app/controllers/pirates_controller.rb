class PiratesController < ApplicationController
  def index # GET
    @pirates = Pirate.all
    render json: @pirates
  end

  def show # GET /pirates/:id
    @pirate = Pirate.find(params[:id])
    render json: @pirate
  end

  def create # POST /pirates
    @pirate = Pirate.create(name: params[:name], age: params[:age])
    render json: @pirate
  end
end
