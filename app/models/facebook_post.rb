class FacebookPost < ApplicationRecord
  has_many :facebook_comments, dependent: :destroy
end
