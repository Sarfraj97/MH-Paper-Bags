class ChangeRatingToBeFloatInProduct < ActiveRecord::Migration[7.0]
  def change
    change_column :products, :rating, :float
  end
end
