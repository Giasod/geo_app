FactoryBot.define do
  factory :ticket do
    request_number { "MyString" }
    sequence_number { 1 }
    request_type { "MyString" }
    request_action { "MyString" }
    response_due_date_time { "2023-07-10 11:01:42" }
    primary_service_area_code { "MyString" }
    additional_service_area_codes { "MyString" }
    well_known_text { "MyString" }
  end
end
