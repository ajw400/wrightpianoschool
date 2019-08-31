class AddLanguagesToTeachers < ActiveRecord::Migration[5.0]
  def change
    add_column :teachers, :languages, :string
  end
end
