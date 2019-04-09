module PlantHelper
  def human_plant_size(size)
    sizes = {
      'small' => 'quite small',
      'medium' => 'almost tall'
    }
    sizes[size] || 'so tall'
  end
end
