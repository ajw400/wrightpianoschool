class AddLocationToTeachers < ActiveRecord::Migration[5.0]
  def change
    add_column :teachers, :location, :string
  end
end
