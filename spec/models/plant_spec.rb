require 'rails_helper'

RSpec.describe Plant, type: 'model' do
  subject(:plant) { build(:plant) }

  describe 'associations' do
    it { is_expected.to have_many(:care_moments) }
    it { is_expected.to belong_to(:user) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
  end
end
