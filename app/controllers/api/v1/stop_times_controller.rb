class Api::V1::StopTimesController < ApplicationController
  def show
    respond_with StopTime.find_by(trip_id: params[:id])
  end

  def index
    respond_with StopTime.all
  end
end
