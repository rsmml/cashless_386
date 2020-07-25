class AddDescriptionOpeningandClosingToVendors < ActiveRecord::Migration[6.0]
  def change
    add_column :vendors, :description, :text
    add_column :vendors, :weekday_opening_times, :text
    add_column :vendors, :saturday_opening_times, :text
    add_column :vendors, :sunday_opening_times, :text
  end
end
