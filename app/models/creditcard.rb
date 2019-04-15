class Creditcard < ApplicationRecord
  has_many :charges
  has_many :payments

  validates :username, presence: true
  validates :limit, presence: true
  validates :apr, presence: true
end
