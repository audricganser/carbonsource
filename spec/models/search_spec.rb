require 'rails_helper'
require 'date'

RSpec.describe Search, type: :model do

  before :each do
    @search = Search.new
    @search.query = "bob"
    @search.date = "2017-01-12T14:49:35+00:00"
    @search.save
  end

  describe 'new search' do
    it 'saves the search parameters' do
      new_search = Search.first
      expect(new_search.query).to eq("bob")
      expect(new_search.date).to eq('2017-01-12T14:49:35+00:00')
    end
  end
end
