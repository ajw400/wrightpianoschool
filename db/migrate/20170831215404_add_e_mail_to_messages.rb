class AddEMailToMessages < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :email, :string
    add_column :messages, :phone, :string
  end
end
