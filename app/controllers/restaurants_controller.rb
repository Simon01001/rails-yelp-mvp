class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: %i[show edit update destroy chef]

  def top
    @restaurants = Restaurant.where(rating: 5)
  end

  def chef
    @chef_name = @restaurant.chef_name
  end
end
