module PlantHelper
  def last_moment_action_class_for(code)
    case code
    when :water then 'info'
    when :repot then 'success'
    when :weed then 'secondary'
    else
      'secondary'
    end
  end
end
