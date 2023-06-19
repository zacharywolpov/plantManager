class RemoveDatePlantedFromPlant < ActiveRecord::Migration[7.0]
  def change
    remove_column :plants, :datePlanted, :string
  end
end
