class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :title
      t.integer :available
      t.integer :price
      t.integer :rating
      t.text :description
      t.string :size
      t.integer :minimun_order_stock

      t.timestamps
    end
  end
end
