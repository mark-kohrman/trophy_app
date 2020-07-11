class CreateTrophies < ActiveRecord::Migration[6.0]
  def change
    create_table :trophies do |t|
      t.string :metal
      t.string :color
      t.string :wood_type
      t.integer :price

      t.timestamps
    end
  end
end
