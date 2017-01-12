require 'rails_helper'

RSpec.describe Politician, type: :model do
  before :each do
    setup_all_databases
  end

  it 'has a first name field' do
    expect(Politician.first.name_first).to eq('Tim')
  end

  it 'has a last name field' do
    expect(Politician.first.name_last).to eq('Withers')
  end

  it 'has a position field' do
    expect(Politician.first.position).to eq('senator')
  end

  it 'has a party field' do
    expect(Politician.first.party).to eq('republican')
  end
end
