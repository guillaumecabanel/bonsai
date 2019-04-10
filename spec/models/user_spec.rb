require 'rails_helper'

RSpec.describe User, type: 'model' do
  subject(:user) { build(:user) }

  describe 'associations' do
    it { is_expected.to have_many(:plants) }
    it { is_expected.to have_many(:care_moments) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:password) }
  end

  describe 'scopes' do
    
  end
end
