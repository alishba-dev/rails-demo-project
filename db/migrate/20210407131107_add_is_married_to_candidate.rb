class AddIsMarriedToCandidate < ActiveRecord::Migration[5.2]
  def change
    add_column :candidates, :is_married, :boolean
  end
end
