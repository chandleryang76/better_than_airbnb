require 'rails_helper'

feature 'visiting the home page' do
  scenario 'the visitor see the company name' do
    visit root_path
    expect(page).to have_text('Better than AirBnB')
  end
end