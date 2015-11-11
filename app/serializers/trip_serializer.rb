class TripSerializer < ActiveModel::Serializer
  attributes :route_id,
             :service_id,
             :trip_id,
             :trip_headsign,
             :direction_id
end
