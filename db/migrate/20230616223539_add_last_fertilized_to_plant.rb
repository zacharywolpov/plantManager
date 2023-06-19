class AddLastFertilizedToPlant < ActiveRecord::Migration[7.0]
  def change
    add_column :plants, :lastFertilized, :date
  end
end
