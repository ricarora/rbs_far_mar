class AddUsernameToVendors < ActiveRecord::Migration
  def change
    add_column :vendors, :username, :string
  end
end
