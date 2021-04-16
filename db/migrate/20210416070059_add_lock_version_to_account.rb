class AddLockVersionToAccount < ActiveRecord::Migration[5.2]
  def change
    add_column :accounts, :lock_version, :integer
  end
end
