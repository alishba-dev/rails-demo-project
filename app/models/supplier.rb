class Supplier < ApplicationRecord
  validates :name, presence: true
  has_one :account
  has_one :account_history, through: :account
end
