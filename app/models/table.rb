class Table < ApplicationRecord
  validate :legs_must_be_4
  validates_with TopValidator
  validates :material, { type: true }

  private
  def legs_must_be_4
    if legs.present? && legs != 4
      errors.add(:legs, "must be 4")
    end
  end
end
