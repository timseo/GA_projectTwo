class CreateDrinks < ActiveRecord::Migration[5.0]
  def change
    create_table :drinks do |t|
      t.string :name
      t.integer :quantity
      t.string :img

      t.timestamps
    end
  end
end
