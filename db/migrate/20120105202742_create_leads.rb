class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.string :email
      t.integer :signups, :default => 0

      t.timestamps
    end
  end
end
