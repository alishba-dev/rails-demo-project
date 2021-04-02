class TopValidator < ActiveModel::Validator
  def validate(record)
    unless record.top === 1
      record.errors.add(:top, "must be equal to 1")
    end
  end
end
