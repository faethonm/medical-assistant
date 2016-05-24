class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :patient
  default_scope -> { order(:start_date) }
end
