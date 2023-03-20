class RestaurantsController < ApplicationController

    # Get all the restaurants
def index
    restaurants = Restaurant.all
    render json: restaurants,  includes: :Pizzas, status: :ok
   
end

# Get a restaurant by id 
def show
    restaurants = Restaurant.find_by(id: params[:id])
    if restaurants
        render json: restaurants, include: :RestaurantPizas, status: :ok
    else
        render json: { error: "Restaurant not found" }, status: :not_found
    end
end

# Delete a restaurant by id 
def destroy
    restaurants = Restaurant.find_by(id: params[:id])
    if restaurants
        render json: restaurants.destroy, status: :ok
    else
        render json: { error: "Restaurant not found" }, status: :not_found
    end
end

end
