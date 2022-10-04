require "application_system_test_case"

class InterviewRemindersTest < ApplicationSystemTestCase
  setup do
    @interview_reminder = interview_reminders(:one)
  end

  test "visiting the index" do
    visit interview_reminders_url
    assert_selector "h1", text: "Interview Reminders"
  end

  test "creating a Interview reminder" do
    visit interview_reminders_url
    click_on "New Interview Reminder"

    fill_in "Applied by", with: @interview_reminder.applied_by
    fill_in "Company name", with: @interview_reminder.company_name
    fill_in "Duration", with: @interview_reminder.duration
    fill_in "Interview date", with: @interview_reminder.interview_date
    fill_in "Interview round", with: @interview_reminder.interview_round
    fill_in "Question", with: @interview_reminder.question
    click_on "Create Interview reminder"

    assert_text "Interview reminder was successfully created"
    click_on "Back"
  end

  test "updating a Interview reminder" do
    visit interview_reminders_url
    click_on "Edit", match: :first

    fill_in "Applied by", with: @interview_reminder.applied_by
    fill_in "Company name", with: @interview_reminder.company_name
    fill_in "Duration", with: @interview_reminder.duration
    fill_in "Interview date", with: @interview_reminder.interview_date
    fill_in "Interview round", with: @interview_reminder.interview_round
    fill_in "Question", with: @interview_reminder.question
    click_on "Update Interview reminder"

    assert_text "Interview reminder was successfully updated"
    click_on "Back"
  end

  test "destroying a Interview reminder" do
    visit interview_reminders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Interview reminder was successfully destroyed"
  end
end
