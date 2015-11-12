require 'rails_helper'

RSpec.describe Api::V1::RoutesController, type: :controller do

  let(:route1) { create(:route) }

  describe "GET #show" do
    it "returns http success" do
      get :show, id: route1.route_id, format: :json
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
