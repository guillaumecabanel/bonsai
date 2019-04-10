require 'rails_helper'

RSpec.describe Users::RecalculateCarePointsService, type: 'service' do
  subject(:service) do
    Users::RecalculateCarePointsService.new(user)
  end

  let(:user) { create(:user, care_points: 2, plants: plants) }
  let(:plants) do
    [
      build(:plant, care_points: 0),
      build(:plant, care_points: 2)
    ]
  end

  describe '#call' do
    context "when user's plants care points have changed" do
      before :each do
        user.plants.first.update(care_points: 10)
        user.plants.second.update(care_points: 102)
      end

      it 'updates user care points' do
        service.call
        expect(user.care_points).to eq(112)
      end
    end
  end
end
