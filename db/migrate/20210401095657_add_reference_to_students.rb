class AddReferenceToStudents < ActiveRecord::Migration[5.2]
  def change
    add_reference :students, :course, polymorphic: true
  end
end
