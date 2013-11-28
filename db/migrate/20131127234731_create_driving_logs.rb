class CreateDrivingLogs < ActiveRecord::Migration
  def change
    create_table :Driving_Logs do |t|
      t.date :Drive_Date
      t.string :Verifiers_Initials
      t.time :Driving_Time
      t.boolean :Night_Driving
      t.string :Comments

      t.timestamps
    end
  end
end
