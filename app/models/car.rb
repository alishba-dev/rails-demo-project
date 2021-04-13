class Car < ApplicationRecord
  belongs_to :engineer, dependent: :nullify
end
