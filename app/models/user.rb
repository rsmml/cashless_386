class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :cards, dependent: :destroy
  has_many :bills
  has_many :reviews

  GENDERS = %w[male female other]

  # validates :name, presence: true
  # validates :last_name, presence: true
  # validates :nick_name, presence: true
  # validates :phone_number, presence: true
  # validates :date_of_birth, presence: true
  # validates :gender, presence: true, inclusion: { in: GENDERS }
  # validates :address, presence: true
end
