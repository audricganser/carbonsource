class Source < ApplicationRecord
  has_one :organisation
  belongs_to :politician
  has_one :contribution
end
