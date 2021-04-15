class Question < ApplicationRecord
  # scope :select_question_text, -> { select(question_text) }
  scope :where_created_whenever, ->(date = DateTime.now - 1.day) { where(['created_at >= ?', date]) }
end
