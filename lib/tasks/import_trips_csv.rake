require 'csv'

namespace :import_trips_csv do
  task create_trips: :environment do
    csv_data = File.read("transit_data/trips.csv")
    csv = CSV.parse(csv_data, headers: true)
    csv.each do |row|
      Trip.create!(row.to_hash)
    end
  end
end