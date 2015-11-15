class Api::V1::RoutesController < ApplicationController
  def show
    respond_with Route.find_by(route_id: params[:id])
  end

  def index
    respond_with Route.all
  end

  def stops
    respond_with Route.find_by(route_id: find_params[:route_id]).stops
  end

  private

  def find_params
    params.permit(:route_id)
  end
end
