class Test < ApplicationRecord
  belongs_to :order

  validates :test_name, presence: true
  validates :status, presence: true
end
