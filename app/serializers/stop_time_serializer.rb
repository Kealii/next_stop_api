class StopTimeSerializer < ActiveModel::Serializer
  attributes :trip_id,
             :arrival_time,
             :departure_time,
             :stop_id,
             :stop_sequence,
             :stop_headsign
end
