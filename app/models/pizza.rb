class Pizza < ApplicationRecord
    has_many :RestaurantPizzas
    has_many :Restaurants, through: :RestaurantPizza
end
