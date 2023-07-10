# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Excavator, type: :model do
  it { should belong_to(:ticket) }

  it { should validate_presence_of(:company_name) }
end
