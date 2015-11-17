class Route < ActiveRecord::Base
  self.primary_key = 'route_id'
  has_many :trips, -> {where(service_id: ['WK', 'SA'])}
  has_many :stops, through: :trips

  def ordered_trips
    trips.includes(:stop_times).order('stop_times.departure_time ASC')
  end
end
