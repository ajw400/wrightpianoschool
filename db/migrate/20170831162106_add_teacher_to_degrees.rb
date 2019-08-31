class AddTeacherToDegrees < ActiveRecord::Migration[5.0]
  def change
    add_reference :degrees, :teacher, foreign_key: true
  end
end
