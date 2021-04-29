class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :oders

         validates :password,format: { with: /\A(?=.*?[a-zA-Z])(?=.*?[\d])\w{6,100}\z/}
         validates :nickname , presence: true
end
