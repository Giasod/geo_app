require 'rails_helper'

RSpec.describe "Api::V1::Tickets", type: :request do
  describe "POST /create" do
    let(:valid_attributes) do
      {
        "RequestNumber" => "09252012-00001",
        "SequenceNumber" => "2421",
        "RequestType" => "Normal",
        "RequestAction" => "Restake",
        "DateTimes" => {
          "ResponseDueDateTime" => "2011/07/02 23:59:59"
        },
        "ServiceArea" => {
          "PrimaryServiceAreaCode" => { "SACode" => "ZZGL" },
          "AdditionalServiceAreaCodes" => { "SACode" => ["EZ", "E'Z"] }
        },
        "ExcavationInfo" => {
          "DigsiteInfo" => {
            "WellKnownText" => "POLYGON ((30 10, 40 40, 20 40, 10 20, 30 10))"
          }
        },
        "Excavator" => {
          "CompanyName" => "John Doe CONSTRUCTION",
          "Address" => "555 Some RD",
          "City" => "SOME PARK",
          "State" => "ZZ",
          "Zip" => "55555",
          "CrewOnsite" => "true"
        }
      }
    end

    let(:invalid_attributes) do
      valid_attributes.deep_dup.tap do |attrs|
        attrs["ExcavationInfo"]["DigsiteInfo"]["WellKnownText"] = ""
      end
    end

    context "with valid parameters" do
      it "creates a new Ticket" do
        expect {
          post api_v1_tickets_url, params: valid_attributes
        }.to change(Ticket, :count).by(1)
      end

      it "creates a new Excavator" do
        expect {
          post api_v1_tickets_url, params: valid_attributes
        }.to change(Excavator, :count).by(1)
      end

      it "returns a 201 status code" do
        post api_v1_tickets_url, params: valid_attributes
        expect(response).to have_http_status(:created)
      end
    end

    context "with invalid parameters" do
      it "does not create a new Ticket" do
        expect {
          post api_v1_tickets_url, params: invalid_attributes
        }.not_to change(Ticket, :count)
      end

      it "does not create a new Excavator" do
        expect {
          post api_v1_tickets_url, params: invalid_attributes
        }.not_to change(Excavator, :count)
      end

      it "returns a 422 status code" do
        post api_v1_tickets_url, params: invalid_attributes
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end
end
