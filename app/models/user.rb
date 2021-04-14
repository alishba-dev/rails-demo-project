class User < ApplicationRecord
  has_many :friends, class_name: 'Friend'
  has_many :emergencies, class_name: 'Emergency'
  with_options if: :is_admin? do |admin|
    admin.validates :password, length: { minimum: 10 }
    admin.validates :email, presence: true
  end

  after_initialize do |user|
    puts "You have initialized an object! #{user}"
  end

  after_find do |user|
    puts "You have found an object! #{user}"
  end
end
