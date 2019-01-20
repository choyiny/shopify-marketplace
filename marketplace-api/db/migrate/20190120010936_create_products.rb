class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title, null: false, unique: true
      t.decimal :price, null: false
      t.integer :inventory_count, null: false, default: 0

      t.timestamps
    end
  end
end
