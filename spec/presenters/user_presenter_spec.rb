require 'rails_helper'

RSpec.describe UserPresenter, type: 'presenter' do
  subject(:user_presenter) do
    UserPresenter.new(user)
  end

  let(:user) do
    build(
      :user,
      level: 1,
      care_points: 15
    )
  end
 
  describe '#points_to_next_level' do
    it 'returns an integer' do
      expect(user_presenter.points_to_next_level).to be_an(Integer)
    end

    it 'returns the number of points to get the next level' do
      expect(user_presenter.points_to_next_level).to eq(5)
    end

    context 'when the user has the level max' do
      before { user.level = 6 }

      it 'returns 0' do
        expect(user_presenter.points_to_next_level).to eq(0)
      end
    end

  end
end
