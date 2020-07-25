class Card < ApplicationRecord
  belongs_to :user

  validates :type, presence: true
  validates :number, presence: true
  validates :expire_date, presence: true
  validates :ccv, presence: true
  validates :card_holder, presence: true
end
