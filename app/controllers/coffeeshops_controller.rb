class CoffeeshopsController < ApplicationController
  def index
    coffeeshops = Coffeeshop.all
    render :json => coffeeshops.as_json(only: [:name, :neighborhood], status: :ok)
  end
end

