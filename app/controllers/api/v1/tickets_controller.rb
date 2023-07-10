# frozen_string_literal: true

module Api
  module V1
    class TicketsController < ApplicationController
      skip_before_action :verify_authenticity_token

      def create
        @ticket = Ticket.new(ticket_params)
        @ticket.excavators.build(excavator_params)

        if @ticket.save
          render json: @ticket, status: :created
        else
          render json: @ticket.errors, status: :unprocessable_entity
        end
      end

      private

      def ticket_params
        {
          request_number: params['RequestNumber'],
          sequence_number: params['SequenceNumber'],
          request_type: params['RequestType'],
          request_action: params['RequestAction'],
          response_due_date_time: params.dig('DateTimes', 'ResponseDueDateTime'),
          primary_service_area_code: params.dig('ServiceArea', 'PrimaryServiceAreaCode', 'SACode'),
          additional_service_area_codes: params.dig('ServiceArea', 'AdditionalServiceAreaCodes', 'SACode'),
          well_known_text: params.dig('ExcavationInfo', 'DigsiteInfo', 'WellKnownText')
        }
      end

      def excavator_params
        excavator_data = params['Excavator']
        {
          company_name: excavator_data&.dig('CompanyName'),
          address: [
            excavator_data&.dig('Address'),
            excavator_data&.dig('City'),
            excavator_data&.dig('State'),
            excavator_data&.dig('Zip')
          ].compact.join(', '),
          crew_on_site: excavator_data&.dig('CrewOnsite')
        }
      end
    end
  end
end
