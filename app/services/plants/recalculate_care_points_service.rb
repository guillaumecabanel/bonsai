module Plants
  class RecalculateCarePointsService
    def initialize(plant)
      @plant = plant
    end

    def call
      @plant.update_attribute(:care_points, @plant.care_moments.sum(:points))
    end
  end
end
