class Practice < ApplicationRecord
  after_initialize do |user|
    puts "You have initialized an object!"
  end

  after_find do |user|
    puts "You have found an object!"
  end
  before_validation :before_val
  after_validation :after_val
  before_save :before_sav
  around_save :around_sav
  before_create :before_crt
  around_create :around_crt
  after_create :after_crt
  after_save :after_sav
  after_commit :after_commit, :on
  after_rollback :after_rollback
  before_destroy :before_destroy
  around_destroy :around_destroy
  after_destroy :after_destroy
  private
  def before_val
    puts 'In Before Validation'
  end

  def after_val
    puts 'In After Validation'
  end

  def before_sav
    puts 'In Before Save'
  end

  def around_sav
    yield
    puts 'In Around Save'
  end

  def after_sav
    puts 'In After Save'
  end

  def before_crt
    puts 'In Before Create'
  end

  def around_crt
    puts 'In Around Create'
  end

  def after_crt
    puts 'In After Create'
  end

  def after_rollback
    puts 'In After Rollback'
  end

  def after_commit
    puts 'In After Commit'
  end

  def before_destroy
    puts 'In Before Destroy'
  end

  def after_destroy
    puts 'In After Destroy'
  end

  def around_destroy
    yield
    puts 'In Around Destroy'
  end
end
