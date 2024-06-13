class LabStaff < ApplicationRecord
    belongs_to :user
  
    validates :department, presence: true
    validates :employee_id, presence: true, uniqueness: true
  end
  