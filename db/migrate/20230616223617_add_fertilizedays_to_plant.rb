class AddFertilizedaysToPlant < ActiveRecord::Migration[7.0]
  def change
    add_column :plants, :fertilizeDays, :integer
  end
end
