class Route < ActiveRecord::Base
  has_many :trips, primary_key: :trip_id
end
