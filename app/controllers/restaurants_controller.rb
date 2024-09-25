class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: %i[show chef]

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def top
    @restaurants = Restaurant.where(rating: 5)
  end

  def chef
    @chef_name = @restaurant.chef_name
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
