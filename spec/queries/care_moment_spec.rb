require 'rails_helper'

RSpec.describe CareMomentQuery, type: 'query' do
  subject(:query) do
    CareMomentQuery.relation(plant.care_moments)
  end

  let(:user) { create(:user) }

  let(:plant) do
    plant = create(:plant, user: user)

    create(:care_moment, plant: plant, code: 'weed', date: Date.yesterday)
    create(:care_moment, plant: plant, code: 'water', date: Date.yesterday)
    create(:care_moment, plant: plant, code: 'repot', date: Date.yesterday)
    plant
  end

  describe '#last_moment_per_code' do
    before :each do
      @care_moment = CareMoment.create!(plant: plant, code: 'weed', date: Date.today, points: 2)
      @care_moment = CareMoment.create!(plant: plant, code: 'repot', date: Date.today, points: 100)
      @care_moment = CareMoment.create!(plant: plant, code: 'water', date: Date.today, points: 10)
    end

    it 'returns an ActiveRecord AssociationRelation' do
      expect(query.last_moment_per_code).to be_an(ActiveRecord::AssociationRelation)
    end

    it 'returns last moment per code' do
      care_moments = query.last_moment_per_code.order(:code)
      expect(care_moments[0].date).to eq(Date.today)
      expect(care_moments[0].code).to eq('repot')
      
      expect(care_moments[1].date).to eq(Date.today)
      expect(care_moments[1].code).to eq('water')

      expect(care_moments[2].date).to eq(Date.today)
      expect(care_moments[2].code).to eq('weed')

    end
  end
end
