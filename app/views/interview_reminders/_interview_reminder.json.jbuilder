json.extract! interview_reminder, :id, :company_name, :interview_date, :status, :questions, :created_at, :updated_at
json.url interview_reminder_url(interview_reminder, format: :json)
