# frozen_string_literal: true

class ExcavatorSerializer < ActiveModel::Serializer
  attributes :id, :company_name, :address, :crew_on_site
end
