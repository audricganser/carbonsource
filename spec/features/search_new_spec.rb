require "rails_helper"

feature 'User visits new search page' do

  scenario 'they see the form on the page' do

    visit '/search/new'
    expect(page).to have_selector("input[type='text']")

  end
end
