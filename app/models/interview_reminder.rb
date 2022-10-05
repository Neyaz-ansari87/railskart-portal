class InterviewReminder < ApplicationRecord
	validates_uniqueness_of :interview_date, scope: :user
	belongs_to :user
end
