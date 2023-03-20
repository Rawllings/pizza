class Pizza < ApplicationRecord
    has_many :RestaurantPizas
    has_many :Restaurants, through: :RestaurantPizas
end
