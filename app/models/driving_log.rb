class DrivingLog < ActiveRecord::Base
  attr_accessible :Comments, :Drive_Date, :Driving_Time, :Night_Driving, :Verifiers_Initials

  validates :Drive_Date, presence: true
  validates :Verifiers_Initials, presence: true
  validates :Driving_Time, presence: true
  
end

