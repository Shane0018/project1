class CreateGownsTrialRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :gowns_trial_requests do |t|
      t.integer :gowns_id
      t.integer :trial_requests_id

      t.timestamps
    end
  end
end
