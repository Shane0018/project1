class CreateFavouriteListsGowns < ActiveRecord::Migration[6.0]
  def change
    create_table :favourite_lists_gowns do |t|
      t.integer :gowns_id
      t.integer :favourite_lists_id

      t.timestamps
    end
  end
end
