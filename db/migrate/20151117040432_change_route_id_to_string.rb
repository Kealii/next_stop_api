class ChangeRouteIdToString < ActiveRecord::Migration
  def change
    change_column :trips, :route_id, :string
  end
end
