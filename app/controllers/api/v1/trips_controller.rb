class Api::V1::TripsController < ApplicationController
  def show
    respond_with Trip.find_by(trip_id: params[:id])
  end

  def index
    respond_with Trip.all
  end
end
