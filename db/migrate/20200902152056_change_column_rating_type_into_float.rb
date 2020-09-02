class ChangeColumnRatingTypeIntoFloat < ActiveRecord::Migration[5.1]
  def change
    change_column :appearances, :rating, :float
  end
end
