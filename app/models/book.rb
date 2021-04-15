class Book < ApplicationRecord
  belongs_to :author, counter_cache: true
  scope :created_yesterday, -> { where(['created_at >= ?', Book::PARAM[:created_at]]) }
  scope :created_whenever, ->(date = DateTime.now - 1.day) { where(['created_at >= ?', date]) }

  PARAM = {
    created_at: DateTime.now - 1.day,
    updated_at: Time.current - 1.day
  }

end
