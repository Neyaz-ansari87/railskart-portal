class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

<<<<<<< HEAD
 has_many :portals, dependent: :destroy
 has_many :interview_reminders, dependent: :destroy
=======
  has_many :portals, dependent: :destroy
>>>>>>> 6f92786a2693411576b8b7958fbe395123fa7e1c
end
