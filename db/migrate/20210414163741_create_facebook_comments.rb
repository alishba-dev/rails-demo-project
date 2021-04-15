class CreateFacebookComments < ActiveRecord::Migration[5.2]
  def change
    create_table :facebook_comments do |t|
      t.references :facebook_post, foreign_key: true

      t.timestamps
    end
  end
end
