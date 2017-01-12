class Politician < ApplicationRecord
  has_many :sources
  has_many :contributions
  has_one :info_contact
end
