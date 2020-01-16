class CoffeeshopsController < ApplicationController
  def index
    coffeeshops = Coffeeshop.all
    render :json => coffeeshops.as_json(only: [:name, :address, :neighborhood, :parking, :wifi, :food, :alcohol], status: :ok)
  end

  # in rails console:
  # Coffeeshop.where(neighborhood: "Magnolia", wifi: true)

  #URL: localhost:3000/match?neighborhood=Magnolia&parking=lot&wifi=true&food=false&alcohol=false
  def match
    @query = {
      :neighborhood => params[:neighborhood],
      :parking => params[:parking],
      :wifi => params[:wifi],
      :food => params[:food],
      :alcohol => params[:alcohol]
    }

    @coffeeshop = Coffeeshop.where(@query)

    render(
      status: :ok,
      json: @coffeeshop.as_json(
        only: [:img, :name, :address, :neighborhood] )
    )
  end

  def coffeeshop_params
    params.require(:coffeeshop).permit(:name, :address, :neighborhood, :parking, :wifi, :food, :alcohol )
  end
end

