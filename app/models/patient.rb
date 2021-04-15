class Patient < ApplicationRecord
  has_many :appointments
  has_many :physicians, -> { distinct }, through: :appointments
end
