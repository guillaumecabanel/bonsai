class GenerateCareMomentService
  def initialize(plant, code)
    @plant = plant
    @code  = code
  end

  def call
    @moment_specs = CareMoment::MOMENTS[@code.to_sym]
    
    set_care_moment
    save_care_moment
  end

  private

  def set_care_moment
    @moment = CareMoment.new(
      plant: @plant,
      date: Date.today,
      code: @code,
    )
    @moment.points = @moment_specs[:points]
  end

  def save_care_moment
    if @moment.save
      Plants::RecalculateCarePointsService.new(@plant).call
      Users::RecalculateCarePointsService.new(@plant.user).call

      return true
    else
      return false
    end
  end
end
