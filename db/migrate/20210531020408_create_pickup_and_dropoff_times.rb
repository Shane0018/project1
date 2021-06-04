class CreatePickupAndDropoffTimes < ActiveRecord::Migration[6.0]
  def change
    create_table :pickup_and_dropoff_times do |t|
      t.timestamp :available_times

      t.timestamps
    end
  end
end
