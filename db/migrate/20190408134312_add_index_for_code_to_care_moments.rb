class AddIndexForCodeToCareMoments < ActiveRecord::Migration[5.2]
  def change
    add_index :care_moments, :code
  end
end
