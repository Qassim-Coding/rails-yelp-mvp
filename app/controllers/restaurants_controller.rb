class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    # tous mes restaurants seront sauvés dans ma variable d'instance @restaurants.
  end

  def new
    @restaurant = Restaurant.new
    # mes restaurants seront créés dans mon instance de restaurant
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    # mes restaurants seront montrés en fonction de l'ID (via les params qui sont des hashes)
    @reviews = @restaurant.reviews.
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    # mes restaurants seront créés avec mes params
      if @restaurant.save
        redirect_to @restaurant
      else
        render :new, status: :unprocessable_entity
        # render --> quand on créé un restaurant on nous renvoit (render) vers une nouvelle page,
      end
  end
    private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
