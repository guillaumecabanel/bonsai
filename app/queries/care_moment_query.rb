class CareMomentQuery < BaseQuery
  def self.relation(base_relation=nil)
    super(base_relation, CareMoment)
  end

  def last_moment_per_code
    select('max(date) AS date, code').
      group(:code)
  end
end
