class Api::V1::StopTimesController < ApplicationController
  def show
    respond_with StopTime.find_by(trip_id: find_params[:trip_id])
  end

  def index
    respond_with StopTime.all
  end

  private

  def find_params
    params.permit(:trip_id,
                  :arrival_time,
                  :departure_time,
                  :stop_id,
                  :stop_sequence,
                  :stop_headsign)
  end
end
