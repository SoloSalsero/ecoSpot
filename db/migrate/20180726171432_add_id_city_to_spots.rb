class AddIdCityToSpots < ActiveRecord::Migration[5.0]
  def change
    add_reference :spots, :city, foreign_key: true
  end
end
