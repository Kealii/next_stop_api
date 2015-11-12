class Api::V1::StopsController < ApplicationController
  def show
    respond_with Stop.find_by(stop_id: find_params[:stop_id])
  end

  def index
    respond_with Stop.all
  end

  private

  def find_params
    params.permit(:stop_id,
                  :stop_name,
                  :stop_desc,
                  :stop_url)
  end
end
