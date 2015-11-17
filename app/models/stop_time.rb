class StopTime < ActiveRecord::Base
  belongs_to :stop, primary_key: :stop_id
  belongs_to :trip, primary_key: :trip_id
end
