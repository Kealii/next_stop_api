class Api::V1::TripsController < ApplicationController
  def show
    respond_with Trip.find_by(trip_id: params[:id])
  end

  def index
    respond_with Trip.all
  end

  private

  def find_params
    params.permit(:route_id,
                  :service_id,
                  :trip_id,
                  :trip_headsign,
                  :direction_id)
  end
end
