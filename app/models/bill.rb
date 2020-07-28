class Bill < ApplicationRecord
  belongs_to :user
  belongs_to :vendor
  monetize :price_cents
  # after_create :generate_code

  # def generate_code
  #   self.qrcode = SecureRandom.hex
  #   save
  # end
end
