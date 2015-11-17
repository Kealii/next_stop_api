class Api::V1::RoutesController < ApplicationController
  def show
    render json: Route.find_by(route_id: params[:id])
  end

  def index
    render json: Route.all, each_serializer: RouteCollectionSerializer
  end

  def stops
    respond_with Route.find_by(route_id: find_params[:route_id]).stops
  end

  private

  def find_params
    params.permit(:route_id)
  end
end
