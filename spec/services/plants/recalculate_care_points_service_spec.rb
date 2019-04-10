require 'rails_helper'

RSpec.describe Plants::RecalculateCarePointsService, type: 'service' do
  subject(:service) do
    Plants::RecalculateCarePointsService.new(plant)
  end

  let(:user)  { create(:user) }
  
  let(:plant) { create(:plant, user: user, care_points: 2, care_moments: care_moments) }
  
  let(:care_moments) do
    [
      build(:care_moment, points: 2),
      build(:care_moment, points: 10)
    ]
  end

  describe '#call' do
    context "when plant has more care moments" do
      before :each do
        plant.care_moments.create!(code: 'water', points: 10)
        plant.care_moments.create!(code: 'water', points: 10)
      end

      it "updates plant's care points" do
        service.call
        expect(plant.care_points).to eq(32)
      end
    end
  end
end
