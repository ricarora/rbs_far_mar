class AddUsernameToVendor < ActiveRecord::Migration
  def change
    add_column :username
  end
end
