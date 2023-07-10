FactoryBot.define do
  factory :excavator do
    ticket { nil }
    company_name { "MyString" }
    address { "MyString" }
    crew_on_site { false }
  end
end
