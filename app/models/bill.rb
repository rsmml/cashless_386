class Bill < ApplicationRecord
  belongs_to :user
  belongs_to :vendor
  monetize :price_cents
end
