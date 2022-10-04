class CreateInterviewReminders < ActiveRecord::Migration[6.1]
  def change
    create_table :interview_reminders do |t|
      t.string :company_name
      t.datetime :interview_date
      t.boolean :status
      t.string :questions

      t.timestamps
    end
  end
end
