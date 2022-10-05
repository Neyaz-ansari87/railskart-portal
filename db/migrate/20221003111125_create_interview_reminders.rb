class CreateInterviewReminders < ActiveRecord::Migration[6.1]
  def change
    create_table :interview_reminders do |t|
      t.string :company_name
      t.string :applied_by
      t.datetime :interview_date
      t.string :duration
      t.string :interview_round
      t.string :question
<<<<<<< HEAD
      t.references :user, null: false, foreign_key: true
      
=======

>>>>>>> 6f92786a2693411576b8b7958fbe395123fa7e1c
      t.timestamps
    end
  end
end
