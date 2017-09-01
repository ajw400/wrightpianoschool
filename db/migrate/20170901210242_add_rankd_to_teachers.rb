class AddRankdToTeachers < ActiveRecord::Migration[5.0]
  def change
    add_column :teachers, :rank, :integer
  end
end
