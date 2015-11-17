class RouteSerializer < ActiveModel::Serializer
  attributes :route_id,
             :route_short_name,
             :route_long_name,
             :route_desc,
             :route_url,
             :stops

  has_many :ordered_trips, key: :trips

  def stops
    object.stops.uniq
  end
end
