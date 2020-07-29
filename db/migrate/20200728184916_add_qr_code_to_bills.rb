class AddQrCodeToBills < ActiveRecord::Migration[6.0]
  def change
    add_column :bills, :qrcode, :string
  end
end
