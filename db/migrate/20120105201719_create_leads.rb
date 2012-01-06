class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.string :email_address
      t.integer :signup_count
      t.timestamps
    end
  end
end
