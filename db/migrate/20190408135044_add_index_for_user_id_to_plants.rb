class AddIndexForUserIdToPlants < ActiveRecord::Migration[5.2]
  def change
    add_index :plants, :user_id
  end
end
