class Politician < ApplicationRecord
  has_many :sources
  has_one :info_contact
end
