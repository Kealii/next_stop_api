FactoryGirl.define do
  factory :stop do
    stop_id 1
    stop_name "Test Stop 1"
    stop_desc "Test Stop 1 Description"
    zone_id "Test"
    stop_url "www.TestStopURL.com"
    location_type "Test Type"
  end
end
