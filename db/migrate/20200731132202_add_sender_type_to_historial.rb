class AddSenderTypeToHistorial < ActiveRecord::Migration[6.0]
  def change
    add_column :historials, :sender_type, :string
  end
end
