class PlantQuery < BaseQuery
  def self.relation(base_relation=nil)
    super(base_relation, Plant)
  end

  def needing_care
    selects    = []
    joins      = []
    conditions = []

    CareMoment::MOMENTS.each do |code, specs|
      expected_date = Date.tomorrow - specs[:min_frequency_in_days].days

      selects << <<~EOF
        CASE
          WHEN
            moment_#{code}.code IS NULL
            OR
            moment_#{code}.date < '#{expected_date}'
          THEN 1
          ELSE 0
        END AS #{code}_needed
      EOF

      conditions << <<~EOF
        (
          moment_#{code}.id IS NULL
          OR
          (
            moment_#{code}.code = '#{code}'
            AND
            moment_#{code}.date < '#{expected_date}'
          )
        )
      EOF

      joins << <<~EOF
        LEFT OUTER JOIN care_moments moment_#{code} on moment_#{code}.id = (
          SELECT id
          FROM  care_moments
          WHERE care_moments.code = '#{code}' AND care_moments.plant_id = plants.id
          ORDER BY date desc
          LIMIT 1
        )
      EOF
    end

    return select("plants.*, #{selects.join(', ')}").
      joins(joins.join).
      where(conditions.join(' OR ')).
      order(:name)
  end
end
