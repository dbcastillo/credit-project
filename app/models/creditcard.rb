class Creditcard < ApplicationRecord
  validates :username, presence: true
  validates :limit, presence: true
  validates :apr, presence: true
end
