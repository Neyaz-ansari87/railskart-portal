require "test_helper"

class InterviewRemindersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @interview_reminder = interview_reminders(:one)
  end

  test "should get index" do
    get interview_reminders_url
    assert_response :success
  end

  test "should get new" do
    get new_interview_reminder_url
    assert_response :success
  end

  test "should create interview_reminder" do
    assert_difference('InterviewReminder.count') do
      post interview_reminders_url, params: { interview_reminder: { company_name: @interview_reminder.company_name, interview_date: @interview_reminder.interview_date, questions: @interview_reminder.questions, status: @interview_reminder.status } }
    end

    assert_redirected_to interview_reminder_url(InterviewReminder.last)
  end

  test "should show interview_reminder" do
    get interview_reminder_url(@interview_reminder)
    assert_response :success
  end

  test "should get edit" do
    get edit_interview_reminder_url(@interview_reminder)
    assert_response :success
  end

  test "should update interview_reminder" do
    patch interview_reminder_url(@interview_reminder), params: { interview_reminder: { company_name: @interview_reminder.company_name, interview_date: @interview_reminder.interview_date, questions: @interview_reminder.questions, status: @interview_reminder.status } }
    assert_redirected_to interview_reminder_url(@interview_reminder)
  end

  test "should destroy interview_reminder" do
    assert_difference('InterviewReminder.count', -1) do
      delete interview_reminder_url(@interview_reminder)
    end

    assert_redirected_to interview_reminders_url
  end
end
