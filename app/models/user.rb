class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :cards
  has_many :bills
  has_many :reviews
  has_one :dashboard
  has_one_attached :photo

  GENDERS = %w[male female other]

  validates :email, presence: true, uniqueness: true
  validates :name, presence: true
  validates :last_name, presence: true
  validates :gender, presence: true, inclusion: { in: GENDERS }

  # validates_length_of :password, in: 6..20, on: :create
  # validates :nickname, presence: true
  # validates :phone_number, presence: true
  # validates :date_of_birth, presence: true
  # validates :address, presence: true
end
