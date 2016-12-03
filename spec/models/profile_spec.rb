require 'rails_helper'

RSpec.describe Profile, type: :model do
  describe 'validation' do
    it 'has a valid factory' do
      expect(FactoryGirl.create(:profile)).to be_valid
    end

    it {should validate_presence_of(:bio)}
    it {should validate_presence_of(:member_id)}
  end
  describe 'validation' do
    it {should belong_to(:member)}
  end
end
