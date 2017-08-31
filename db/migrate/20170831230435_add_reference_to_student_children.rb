class AddReferenceToStudentChildren < ActiveRecord::Migration[5.0]
  def change
    add_reference :student_children, :student, foreign_key: true
  end
end
