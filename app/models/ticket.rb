# frozen_string_literal: true

class Ticket < ApplicationRecord
  has_many :excavators, dependent: :destroy

  validates :well_known_text, presence: true
end
