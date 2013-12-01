class DrivingLog < ActiveRecord::Base
  attr_accessible :comments, :drive_date, :driving_time, :night_driving, :verifiers_initials

  validates :drive_date, presence: true
  validates :verifiers_initials, presence: true
  validates :driving_time, presence: true

end

