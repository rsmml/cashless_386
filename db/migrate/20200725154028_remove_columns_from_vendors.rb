class RemoveColumnsFromVendors < ActiveRecord::Migration[6.0]
  def change
    remove_column :vendors, :weekday_opening_times
    remove_column :vendors, :saturday_opening_times
    remove_column :vendors, :sunday_opening_times
  end
end
