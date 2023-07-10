FactoryBot.define do
  factory :ticket do
    request_number { '09252012-00001' }
    sequence_number { '2421' }
    request_type { 'Normal' }
    request_action { 'Restake' }
    response_due_date_time { '2011/07/02 23:59:59' }
    primary_service_area_code { 'ZZGL' }
    additional_service_area_codes { ['EZ', "E'Z"] }
    well_known_text { 'POLYGON ((30 10, 40 40, 20 40, 10 20, 30 10))' }

    after(:create) do |ticket|
      create(:excavator, ticket: ticket)
    end
  end
end
