class CreateStops < ActiveRecord::Migration
  def change
    create_table :stops do |t|
      t.integer :stop_id
      t.string  :stop_name
      t.string  :stop_desc
      t.decimal :stop_lat
      t.decimal :stop_lon
      t.string  :zone_id
      t.string  :stop_url
      t.string  :location_type

      t.timestamps null: false
    end
  end
end
