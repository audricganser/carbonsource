require 'rails_helper'

RSpec.describe Politician, type: :model do
  before :each do
    setup_all_databases
  end

  it 'has a name field' do
    expect(Politician.first.name).to eq('bob')
  end
end
