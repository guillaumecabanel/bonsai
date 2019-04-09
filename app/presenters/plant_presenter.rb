class PlantPresenter < BasePresenter
  def needed_care_moments
    moments = CareMoment::MOMENTS.keys.select do |code|
      code if __getobj__["#{code}_needed"] == 1
    end

    moments.presence || CareMoment::MOMENTS.keys
  end
end
