class Status < ApplicationRecord
  validates  :status, presence: true
  belongs_to :product
end
