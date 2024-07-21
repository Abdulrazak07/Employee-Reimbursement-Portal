class Bill < ApplicationRecord
  belongs_to :employee

  validates :amount, presence: true
  validates :bill_type, presence: true
end
