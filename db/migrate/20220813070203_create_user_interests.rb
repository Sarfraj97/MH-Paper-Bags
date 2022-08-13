class CreateUserInterests < ActiveRecord::Migration[7.0]
  def change
    create_table :user_interests do |t|
      t.integer :phone_number
      t.string :email
      t.belongs_to :product, index: true
      
      t.timestamps
    end
  end
end
