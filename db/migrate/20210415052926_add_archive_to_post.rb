class AddArchiveToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :archive, :integer
  end
end
