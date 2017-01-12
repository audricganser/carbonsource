class Organisation < ApplicationRecord
  has_many :sources
  has_many :carbon_emissions
end
