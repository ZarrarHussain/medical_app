class Patient < ApplicationRecord
    belongs_to :user
    has_many :orders, dependent: :destroy
  
    validates :date_of_birth, presence: true
    validates :address, presence: true
    validates :contact_number, presence: true
  end
  