class AddDatePlantedToPlant < ActiveRecord::Migration[7.0]
  def change
    add_column :plants, :datePlanted, :date
  end
end
