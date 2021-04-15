class AddActiveToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :super_post, :integer, default: 0
  end
end
