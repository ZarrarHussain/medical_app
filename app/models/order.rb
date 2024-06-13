class Order < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor

  has_many :tests, dependent: :destroy

  validates :status, presence: true
  validates :order_barcode_id, presence: true, uniqueness: true
end
