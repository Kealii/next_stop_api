class RouteSerializer < ActiveModel::Serializer
  attributes :route_id,
             :route_short_name,
             :route_long_name,
             :route_desc,
             :route_url
end