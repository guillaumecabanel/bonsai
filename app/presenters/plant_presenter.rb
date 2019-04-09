class PlantPresenter < BasePresenter
  def needed_care_moment_codes
    CareMoment::MOMENTS.keys.select do |code|
      __getobj__["#{code}_needed"] == 1
    end
  end
end
