require 'rails_helper'

RSpec.describe Member, type: :model do

  describe 'validation' do
    it 'has a valid factory' do
      expect(FactoryGirl.create(:member)).to be_valid
    end

    it {should validate_presence_of (:name)}
    it {should validate_presence_of (:email)}
    it {should validate_presence_of (:password)}
  end

  describe 'associations' do
    it {should have_one(:profile)}
  end
end
