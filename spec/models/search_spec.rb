require 'rails_helper'
require 'date'

RSpec.describe Search, type: :model do

  before :each do
    @search = Search.new
    @search.query = "bob"
    @search.date = DateTime.now
    @search.save
  end

  describe 'new search' do
    it 'saves the search parameters' do
      new_search = Search.first
      expect(new_search.query).to eq("bob")
      expect(new_search.date).to eq(@search.date)
    end
  end
end
