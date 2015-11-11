require 'csv'

namespace :import_routes_csv do
  task create_routes: :environment do
    csv_data = File.read("transit_data/routes.csv")
    csv = CSV.parse(csv_data, headers: true)
    csv.each do |row|
      Route.create!(row.to_hash)
    end
  end
end
