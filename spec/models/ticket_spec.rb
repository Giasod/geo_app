# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Ticket, type: :model do
  it { should have_many(:excavators) }

  it { should validate_presence_of(:well_known_text) }
end
