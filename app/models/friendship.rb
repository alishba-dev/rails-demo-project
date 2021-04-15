class Friendship < ApplicationRecord
  belongs_to :admin
  belongs_to :buddy, :class_name => 'Admin'
end
