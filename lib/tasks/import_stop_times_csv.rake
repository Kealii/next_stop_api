require 'csv'

namespace :import_stop_times_csv do
  task create_stop_times: :environment do
    csv_data = File.read("transit_data/stop_times.csv")
    csv = CSV.parse(csv_data, headers: true)
    csv.each do |row|
      StopTime.create!(row.to_hash)
    end
  end
end