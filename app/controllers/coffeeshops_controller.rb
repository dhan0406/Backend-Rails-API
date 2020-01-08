class CoffeeshopsController < ApplicationController
  def index
    coffeeshops = Coffeeshop.all
    render :json => coffeeshops.as_json(only: [:name, :address, :neighborhood, :parking, :wifi, :food, :alcohol], status: :ok)
  end

#   def search
# #     user = User.where(...).to_a.clone.map!{ ... } or
# # user = User.where(...).to_a; user.map!{ ... }

#     # will return json as a result of search query from React Native
#     # search query: neighborhood, parking, wifi, food, alcohol

#     matched_results = Coffeeshop.where(:neighborhood = params[:query][:neighborhood])
#   end
end

