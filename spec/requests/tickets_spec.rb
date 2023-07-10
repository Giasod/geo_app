require 'rails_helper'

RSpec.describe "Tickets", type: :request do
  before do
    @ticket = FactoryBot.create(:ticket)
  end

  describe "GET /index" do
    it "returns a success response" do
      get tickets_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "returns a success response" do
      get ticket_url(@ticket)
      expect(response).to be_successful
    end
  end
end
