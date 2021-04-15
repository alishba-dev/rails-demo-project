class Post < ApplicationRecord
  enum status: %i[draft published]
  enum super_post: { is_super: 0, is_not_super: 1 }
  enum archive: { is_archive: 1, is_not_archive: 0 }

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
