class Api::V1::RoutesController < ApplicationController
  def show
    respond_with Route.find_by(route_id: params[:id])
  end

  def index
    respond_with Route.all
  end
end
