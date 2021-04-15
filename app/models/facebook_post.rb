class FacebookPost < ApplicationRecord
  has_many :facebook_comments do
    def find_by_id(facebook_comment_id)
      find_by(id: facebook_comment_id)
    end
  end
  has_many :facebook_comments, dependent: :destroy
end
