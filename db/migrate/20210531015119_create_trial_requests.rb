class CreateTrialRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :trial_requests do |t|
      t.integer :user_id
      t.timestamp :date_ordered
      t.timestamp :date_for_pickup
      t.timestamp :date_for_dropoff

      t.timestamps
    end
  end
end
