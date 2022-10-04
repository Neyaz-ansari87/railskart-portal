class AddStatusToInterviewReminder < ActiveRecord::Migration[6.1]
  def change
    add_column :interview_reminders, :status, :boolean, :default => false
  end
end
