class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.string :email_address
      t.timestamps
    end
  end
end
