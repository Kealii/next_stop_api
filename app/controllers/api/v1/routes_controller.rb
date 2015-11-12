class Api::V1::RoutesController < ApplicationController
  def show
    respond_with Route.find_by(route_id: params[:id])
  end

  def index
    respond_with Route.all
  end

  private
  def find_params
    params.permit(:id,
                  :route_id,
                  :route_short_name,
                  :route_long_name,
                  :route_desc,
                  :route_url)
  end
end
