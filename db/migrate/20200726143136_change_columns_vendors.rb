class ChangeColumnsVendors < ActiveRecord::Migration[6.0]
  def change
    change_column :vendors, :opens, :time
    change_column :vendors, :closes, :time
  end
end
