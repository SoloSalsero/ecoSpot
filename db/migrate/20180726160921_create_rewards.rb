class CreateRewards < ActiveRecord::Migration[5.0]
  def change
    create_table :rewards do |t|
      t.integer :category
      t.string :image
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
