class Portal < ApplicationRecord

	# has_one :interview_reminder
	validates_uniqueness_of :date_of_application, scope: :user 
	

	 validates :company_name,:status,:date_of_application, presence: true
    belongs_to :user

end
