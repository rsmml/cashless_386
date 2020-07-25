class ChangePhoneInVendor < ActiveRecord::Migration[6.0]
  def change
    change_column :vendors, :phone, :string
  end
end
