FactoryGirl.define do
  factory :stop_time do
    trip_id 1
    arrival_time "00:00:01"
    departure_time "00:00:01"
    stop_id 1
    stop_sequence 1
    stop_headsign "Test Stop Headsign"
    pickup_type 1
    drop_off_type 1
    shape_dist_traveled "1"
  end
end
