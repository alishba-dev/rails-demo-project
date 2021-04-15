class Author < ApplicationRecord
  has_many :books, dependent: :destroy, autosave: true,
              before_add: :my_before_add, after_add: :my_after_add,
             before_remove: :my_before_remove, after_remove: :my_after_remove
  validates_associated :books

  # has_many :books, -> { extending FindRecentExtension }
  private

  def my_before_add(book)
    puts 'I am in before add'
  end

  def my_after_add(book)
    puts 'I am in after add'
  end

  def my_before_remove(book)
    puts 'I am in before remove'
  end

  def my_after_remove(book)
    puts 'I am in after remove'
  end
end
