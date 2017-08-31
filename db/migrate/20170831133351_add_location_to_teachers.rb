class AddLocationToTeachers < ActiveRecord::Migration
  def change
    add_column :teachers, :location, :string
  end
end
