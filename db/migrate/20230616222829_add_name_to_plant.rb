class AddNameToPlant < ActiveRecord::Migration[7.0]
  def change
    add_column :plants, :needsFertilizer, :boolean
  end
end
