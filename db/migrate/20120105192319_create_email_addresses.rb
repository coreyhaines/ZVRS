class CreateEmailAddresses < ActiveRecord::Migration
  def change
    create_table :email_addresses do |t|

      t.timestamps
    end
  end
end
