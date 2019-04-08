class AddIndexForPlantIdToCareMoments < ActiveRecord::Migration[5.2]
  def change
    add_index :care_moments, :plant_id
  end
end
