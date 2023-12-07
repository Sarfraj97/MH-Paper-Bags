class CreateUserInterests < ActiveRecord::Migration[7.0]
  def change
    create_table :user_interests do |t|      
      t.references :product, null: false, foreign_key: true      
      t.string :phone_number
      t.string :email
      t.timestamps
    end
  end
end
