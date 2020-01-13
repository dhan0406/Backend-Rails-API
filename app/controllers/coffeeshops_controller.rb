class CoffeeshopsController < ApplicationController
  def index
    coffeeshops = Coffeeshop.all
    render :json => coffeeshops.as_json(only: [:name, :address, :neighborhood, :parking, :wifi, :food, :alcohol], status: :ok)
  end

  # in rails console:
  # Coffeeshop.where(neighborhood: "Magnolia", wifi: true)
  def match
    @query = {}
    @query[:neighborhood] = params[:neighborhood]
    @query[:parking] = params[:parking]
    @query[:wifi] = params[:wifi]
    @query[:food] = params[:food]
    @query[:alcohol] = params[:alcohol]

    @coffeeshop = Coffeeshop.where(@query)

    render(
      status: :ok,
      json: @coffeeshop.as_json(
        only: [:name, :address, :neighborhood] )
    )
  end

  def coffeeshop_params
    params.require(:coffeeshop).permit(:name, :address, :neighborhood, :parking, :wifi, :food, :alcohol )
  end
end

