class Doctor < ApplicationRecord
    belongs_to :user
    has_many :orders, dependent: :destroy
  
    validates :specialization, presence: true
    validates :clinic_hospital_name, presence: true
  end
  