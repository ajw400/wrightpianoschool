class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.text :bio
      t.integer :hour_fee
      t.integer :in_home_fee

      t.timestamps
    end
  end
end
