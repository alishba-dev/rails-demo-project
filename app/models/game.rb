class Game < ApplicationRecord
  has_one :peak
  has_one :team, through: :peak
end
