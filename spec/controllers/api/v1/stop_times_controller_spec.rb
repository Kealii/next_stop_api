require 'rails_helper'

RSpec.describe Api::V1::StopTimesController, type: :controller do

  let(:stop_time1) { create(:stop_time) }

  describe "GET #show" do
    it "returns http success" do
      get :show, id: stop_time1.trip_id, format: :json
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
