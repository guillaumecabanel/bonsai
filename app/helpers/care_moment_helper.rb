module CareMomentHelper
  def care_moment_button_css_color(code)
    action_classes = {
      water: 'info',
      repot: 'success',
      weed:  'secondary'
    }
    action_classes[code] || 'secondary'
  end
end
