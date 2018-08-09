class CreateTips < ActiveRecord::Migration[5.0]
  def change
    create_table :tips do |t|
      t.string :image
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
