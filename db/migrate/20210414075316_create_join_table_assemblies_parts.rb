class CreateJoinTableAssembliesParts < ActiveRecord::Migration[5.2]
  def change
    create_join_table :parts, :assemblies, :id => false do |t|
      t.references :parts, foreign_key: true
      t.references :assemblies, foreign_key: true
    end
  end
end
