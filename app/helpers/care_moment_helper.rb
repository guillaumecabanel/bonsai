module CareMomentHelper
  def care_moment_css_color(code)
    action_classes = {
      water: 'info',
      repot: 'success',
      weed:  'secondary'
    }
    action_classes[code.to_sym] || 'secondary'
  end
end
