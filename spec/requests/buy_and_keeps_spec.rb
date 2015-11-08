require 'rails_helper'

RSpec.describe "BuyAndKeeps", type: :request do
  describe "GET /buy_and_keeps" do
    it "works! (now write some real specs)" do
      get buy_and_keeps_path
      expect(response).to have_http_status(200)
    end
  end
end
