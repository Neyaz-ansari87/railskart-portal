class Portal < ApplicationRecord
	validates :company_name, presence: true, length: {maximum: 100}
	belongs_to :user
end
