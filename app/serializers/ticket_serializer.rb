# frozen_string_literal: true

class TicketSerializer < ActiveModel::Serializer
  attributes :id, :request_number, :sequence_number, :request_type, :request_action, :response_due_date_time,
             :primary_service_area_code, :additional_service_area_codes, :well_known_text
  has_many :excavators
end
