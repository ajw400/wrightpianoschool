class AddLanguagesToTeachers < ActiveRecord::Migration
  def change
    add_column :teachers, :languages, :string
  end
end
