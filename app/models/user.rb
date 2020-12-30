class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :terms_of_service, :acceptance => true
  enum role: [:Customer, :Superadmin]
  # validates :first_name, presence: true
  # validates :last_name, presence: true
end
