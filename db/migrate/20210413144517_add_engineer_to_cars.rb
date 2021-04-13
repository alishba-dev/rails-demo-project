class AddEngineerToCars < ActiveRecord::Migration[5.2]
  def change
    add_reference :cars, :engineer, foreign_key: true
  end
end
