class Restaurant < ApplicationRecord
    has_many :RestaurantPizas
    has_many :Pizzas, through: :RestaurantPiza
end
