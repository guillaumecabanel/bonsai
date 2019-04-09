module PlantHelper
  def last_moment_action_class_for(code)
    action_classes = {
      water: 'info',
      repot: 'success',
      weed:  'secondary'
    }
    action_classes[code] || 'secondary'
  end
end
