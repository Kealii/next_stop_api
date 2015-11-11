require 'csv'

  namespace :import_stops_csv do
    task create_stops: :environment do
      csv_data = File.read("transit_data/stops.csv")
      csv = CSV.parse(csv_data, headers: true)
      csv.each do |row|
        Stop.create!(row.to_hash)
      end
    end
  end