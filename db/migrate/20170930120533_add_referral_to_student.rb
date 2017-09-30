class AddReferralToStudent < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :referral, :string
  end
end
