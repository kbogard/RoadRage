class CreateDrivingLogs < ActiveRecord::Migration
  def change
    create_table :driving_logs do |t|
      t.date :drive_date
      t.string :verifiers_initials
      t.time :driving_time
      t.boolean :night_driving
      t.string :comments

      t.timestamps
    end
  end
end
