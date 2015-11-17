class Trip < ActiveRecord::Base
  self.primary_key = 'trip_id'

  belongs_to :route, primary_key: :route_id
  has_many :stop_times, -> {order(stop_sequence: :asc)}
  has_many :stops, through: :stop_times
end
