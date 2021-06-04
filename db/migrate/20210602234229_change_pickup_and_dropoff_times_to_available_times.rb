class ChangePickupAndDropoffTimesToAvailableTimes < ActiveRecord::Migration[6.0]
  def change
    rename_table :pickup_and_dropoff_times, :available_times
  end
end
