module PlantHelper
  def last_moment_action_class_for(code)
    action_classes = {
      water: 'info',
      repot: 'success',
      weed:  'secondary'
    }
    action_classes[code] || 'secondary'
  end

  def human_plant_size(size)
    sizes = {
      'small' => 'quite small',
      'medium' => 'almost tall'
    }
    sizes[size] || 'so tall'
  end
end
