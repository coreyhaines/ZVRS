class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.string :address

      t.timestamps
    end
  end
end
