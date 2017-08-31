class AddLanguagesToStudent < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :languages, :string
  end
end
