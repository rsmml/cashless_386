class ChangeTypeInVendors < ActiveRecord::Migration[6.0]
  def change
    rename_column :vendors, :type, :business
  end
end
