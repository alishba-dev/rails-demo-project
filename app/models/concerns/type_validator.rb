class TypeValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless (value === "wood") || (value === "iron")
      record.errors.add(attribute, "must be either wood or iron")
    end
  end
end
