class CreateStudentChildren < ActiveRecord::Migration[5.0]
  def change
    create_table :student_children do |t|
      t.string :first_name
      t.string :last_name
      t.string :birthdate
      t.string :experience

      t.timestamps
    end
  end
end
