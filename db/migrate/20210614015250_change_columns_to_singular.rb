class ChangeColumnsToSingular < ActiveRecord::Migration[6.0]
  def change
    rename_column :favourite_lists_gowns, :gowns_id, :gown_id 
    rename_column :favourite_lists_gowns, :favourite_lists_id, :favourite_list_id 
  end
end
