require 'rails_helper'

RSpec.describe PlantPresenter, type: 'presenter' do
  subject(:presenter) do
    PlantPresenter.new(plant)
  end

  let(:user)  { create(:user) }
  let(:plant) do
    plant = create(:plant, user: user)
    PlantQuery.relation.needing_care.find(plant.id)
  end

  describe '#needed_care_moment_codes' do
    it 'returns care moments codes' do
      expect(presenter.needed_care_moment_codes).to match_array(%i[water weed repot])
    end

    context 'when only water is needed' do
      let(:plant) do
        plant = create(:plant, user: user)

        create(:care_moment, plant: plant, code: 'weed', date: Date.today)
        create(:care_moment, plant: plant, code: 'repot', date: Date.today)

        PlantQuery.relation.needing_care.find(plant.id)
      end

      it 'returns only water' do
        expect(presenter.needed_care_moment_codes).to match_array(%i[water])
      end
    end
  end
end
