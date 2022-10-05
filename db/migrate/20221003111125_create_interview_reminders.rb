class CreateInterviewReminders < ActiveRecord::Migration[6.1]
  def change
    create_table :interview_reminders do |t|
      t.string :company_name
      t.string :applied_by
      t.datetime :interview_date
      t.string :duration
      t.string :interview_round
      t.string :question
      t.references :user, null: false, foreign_key: true
      

      t.timestamps
    end
  end
end
