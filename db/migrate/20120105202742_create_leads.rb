class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.string :email
      t.integer :signups, :default => 0
      t.string :referral_key

      t.timestamps
    end
  end
end
