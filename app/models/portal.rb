class Portal < ApplicationRecord
<<<<<<< HEAD
	# has_one :interview_reminder
	validates_uniqueness_of :date_of_application, scope: :user 
	

	 validates :company_name,:status,:date_of_application, presence: true
    belongs_to :user
=======
	validates :company_name, presence: true, length: {maximum: 100}
	belongs_to :user
>>>>>>> 6f92786a2693411576b8b7958fbe395123fa7e1c
end
