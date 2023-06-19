class CreatePlants < ActiveRecord::Migration[7.0]
  def change
    create_table :plants do |t|
      t.string :plantType
      t.text :plantDescription
      t.text :plantTips
      t.date :datePlanted
      t.integer :numPlants
      


      t.timestamps
    end
  end
end
