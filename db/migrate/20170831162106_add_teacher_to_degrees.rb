class AddTeacherToDegrees < ActiveRecord::Migration
  def change
    add_reference :degrees, :teacher, foreign_key: true
  end
end
