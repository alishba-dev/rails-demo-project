class Animal < ApplicationRecord

  validates :age, inclusion: 1...10 #validates only if age between 1 and 9
  validates :name, length: { minimum: 2 }, uniqueness: { message: ->(object, data) do
    "Hey #{object.name}, #{data[:value]} is already taken."
  end }
  validates :bio, presence: true
  validates :email, presence: true, format: { with: /.*@.*/ }, confirmation: true
end
