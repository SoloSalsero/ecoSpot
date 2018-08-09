class AddIdDistrictToSpots < ActiveRecord::Migration[5.0]
  def change
    add_reference :spots, :district, foreign_key: true
  end
end
