class CreateDegrees < ActiveRecord::Migration[5.0]
  def change
    create_table :degrees do |t|
      t.string :description
      t.string :school
      t.string :year
      t.string :notes

      t.timestamps
    end
  end
end
