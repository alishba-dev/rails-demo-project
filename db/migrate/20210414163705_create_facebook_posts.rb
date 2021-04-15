class CreateFacebookPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :facebook_posts do |t|

      t.timestamps
    end
  end
end
