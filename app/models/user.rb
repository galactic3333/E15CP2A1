class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :histories, dependent: :destroy

  validates :name, presence: true
  validates :username, presence: true
  validates :username, uniqueness: true
end
