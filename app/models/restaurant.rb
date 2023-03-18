class Restaurant < ApplicationRecord
    has_many :RestaurantPizzas
    has_many :Pizzas, through: :RestaurantPizza
end
