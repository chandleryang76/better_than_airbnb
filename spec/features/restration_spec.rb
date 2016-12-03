require 'rails_helper'

feature 'visiting the home page' do
  scenario 'host register' do
    visit root_path
    click_link 'Become A Host'
    fill_in_registration_fields
    expect(page).to have_content('Welcome! You have signed up successfully')
    #expect(page).to have_content(:signed_up)
  end

  def fill_in_registration_fields
    fill_in 'member[name]', with: FFaker::Name.name
    fill_in 'member[email]',with: FFaker::Internet.email
    fill_in 'member[password]', with: Devise.friendly_token.first(8)
    click_button 'Sign up'
  end
end