class CreateGowns < ActiveRecord::Migration[6.0]
  def change
    create_table :gowns do |t|
      t.string :title
      t.string :colour
      t.integer :size
      t.date :availability

      t.timestamps
    end
  end
end
