class Author < ApplicationRecord
  has_many :books, dependent: :destroy, autosave: true
  validates_associated :books
end
