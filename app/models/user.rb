class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :cards, dependent: :destroy
  has_many :bills
  has_many :reviews

  has_one_attached :photo

  GENDERS = %w[male female other]


  # validates_length_of :password, in: 6..20, on: :create
  # validates :name, presence: true
  # validates :last_name, presence: true
  # validates :nickname, presence: true
  # validates :phone_number, presence: true
  # validates :date_of_birth, presence: true
  # validates :gender, presence: true, inclusion: { in: GENDERS }
  # validates :address, presence: true
end
