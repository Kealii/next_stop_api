require 'rails_helper'

RSpec.describe Api::V1::StopsController, type: :controller do

  let(:stop1) { create(:stop) }

  describe "GET #show" do
    it "returns http success" do
      get :show, id: stop1.stop_id, format: :json
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
