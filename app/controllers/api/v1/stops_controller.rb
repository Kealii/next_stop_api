class Api::V1::StopsController < ApplicationController
  def show
    respond_with Stop.find_by(stop_id: params[:id])
  end

  def index
    respond_with Stop.all
  end
end
