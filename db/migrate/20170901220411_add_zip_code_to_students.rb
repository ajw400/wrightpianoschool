class AddZipCodeToStudents < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :zip_code, :string
  end
end
