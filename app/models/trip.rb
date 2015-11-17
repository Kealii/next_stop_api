class Trip < ActiveRecord::Base
  belongs_to :route, primary_key: :route_id
  has_many :stop_times
  has_many :stops, through: :stop_times
end
