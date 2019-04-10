require 'rails_helper'

RSpec.describe CareMoment, type: 'model' do
  subject(:care_moment) { build(:care_moment) }

  describe 'associations' do
    it { is_expected.to belong_to(:plant) }
  end

  describe 'validations' do
    it do
      is_expected.to validate_inclusion_of(:code).
        in_array(%w[weed water repot])
    end

    it do
      is_expected.to validate_numericality_of(:points).
        is_greater_than(0)
    end
  end
end
