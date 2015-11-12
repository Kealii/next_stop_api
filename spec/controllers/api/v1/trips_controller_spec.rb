require 'rails_helper'

RSpec.describe Api::V1::TripsController, type: :controller do

  let(:trip1) { create(:trip) }

  describe "GET #show" do
    it "returns http success" do
      get :show, id: trip1.trip_id, format: :json
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #index" do
    it "returns http success" do
      get :index, format: :json
      expect(response).to have_http_status(:success)
    end
  end

end
