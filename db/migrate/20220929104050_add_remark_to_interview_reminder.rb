class AddRemarkToInterviewReminder < ActiveRecord::Migration[6.1]
  def change
    add_column :interview_reminders, :remark, :string
  end
end
