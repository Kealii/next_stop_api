module Api
  module V1
    class SearchController < ApplicationController
      class SearchSerializer < ActiveModel::Serializer
        attributes :route_short_name
      end


      def index
        stop_times = StopTime.where(stop_id: params[:stop_id], departure_time: params[:departure_time]).limit(3)
        trips = Trip.includes(:stop_times).where(stop_times: {stop_id: params[:stop_id]}).limit(3).pluck(:route_id).uniq
        routes = Route.where(route_id: trips)

        render json: routes, each_serializer: SearchSerializer
      end
    end
  end
end