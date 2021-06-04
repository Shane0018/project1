class AddUrlToGowns < ActiveRecord::Migration[6.0]
  def change
    add_column :gowns, :url, :string 
  end
end
