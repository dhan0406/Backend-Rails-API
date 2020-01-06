class CoffeeshopsController < ApplicationController
  def index
    coffeeshops = Coffeeshop.all
    render :json => coffeeshops.as_json(only: [:name, :neighborhood], status: :ok)
  end

  def search
    # will return json as a result of search query from React Native
    # search query: neighborhood, parking, wifi, food, alcohol
  end
end

