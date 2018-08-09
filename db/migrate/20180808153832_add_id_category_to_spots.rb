class AddIdCategoryToSpots < ActiveRecord::Migration[5.0]
  def change
    add_reference :spots, :category, foreign_key: true
  end
end
