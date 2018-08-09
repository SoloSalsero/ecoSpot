class CreateSpots < ActiveRecord::Migration[5.0]
  def change
    create_table :spots do |t|
      t.string :name
      t.string :description
      t.float :latitude
      t.float :longitude
      t.integer :city
      t.integer :district
      t.integer :category

      t.timestamps
    end
  end
end
