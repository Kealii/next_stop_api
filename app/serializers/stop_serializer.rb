class StopSerializer < ActiveModel::Serializer
  attributes :stop_id,
             :stop_name,
             :stop_desc,
             :stop_url
end
