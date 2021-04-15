class CreateFriendships < ActiveRecord::Migration[5.2]
  def change
    create_table :friendships do |t|
      t.integer :admin_id
      t.integer :friend_id
      t.string :create
      t.string :destroy

      t.timestamps
    end
  end
end
