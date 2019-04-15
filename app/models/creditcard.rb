class Creditcard < ApplicationRecord
  has_many :charges

  validates :username, presence: true
  validates :limit, presence: true
  validates :apr, presence: true
end
