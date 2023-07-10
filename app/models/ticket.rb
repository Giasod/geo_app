# frozen_string_literal: true

class Ticket < ApplicationRecord
  has_many :excavators

  validates :well_known_text, presence: true
end
