class AddPeakReferenceToTeam < ActiveRecord::Migration[5.2]
  def change
    add_reference :teams, :peak, foreign_key: true
  end
end
