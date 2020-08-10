class RemoveCheckoutSessionFromBills < ActiveRecord::Migration[6.0]
  def change
    remove_column :bills, :checkout_session_id
  end
end
