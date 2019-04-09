require 'delegate'

class BasePresenter < SimpleDelegator
  def self.wrap(resources)
    resources.map { |resource| new(resource) }
  end
end
