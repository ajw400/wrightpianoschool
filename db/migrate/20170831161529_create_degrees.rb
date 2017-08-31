class CreateDegrees < ActiveRecord::Migration
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
