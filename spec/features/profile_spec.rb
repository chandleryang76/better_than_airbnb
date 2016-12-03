require 'rails_helper'

feature 'Profiles' do
  let(:member) { FactoryGirl.create(:member)}

  scenario 'host create profiles' do
    visit new_member_profile_path(member)
    fill_in 'profile[bio]', with: FFaker::Lorem.paragraph(2)
    click_button 'Create Profile'
    expect(page).to have_content('Profile was successfully created.')
  end

end