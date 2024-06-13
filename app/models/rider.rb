class Rider < ApplicationRecord
    belongs_to :user
  
    validates :vehicle_type, presence: true
    validates :area_of_coverage, presence: true
  end
  