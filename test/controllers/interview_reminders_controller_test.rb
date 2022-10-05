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
<<<<<<< HEAD
      post interview_reminders_url, params: { interview_reminder: { applied_by: @interview_reminder.applied_by, company_name: @interview_reminder.company_name, duration: @interview_reminder.duration, interview_date: @interview_reminder.interview_date, interview_round: @interview_reminder.interview_round, question: @interview_reminder.question } }
=======

      post interview_reminders_url, params: { interview_reminder: { applied_by: @interview_reminder.applied_by, company_name: @interview_reminder.company_name, duration: @interview_reminder.duration, interview_date: @interview_reminder.interview_date, interview_round: @interview_reminder.interview_round, question: @interview_reminder.question } }

      post interview_reminders_url, params: { interview_reminder: { company_name: @interview_reminder.company_name, interview_date: @interview_reminder.interview_date, questions: @interview_reminder.questions, status: @interview_reminder.status } }

>>>>>>> 6f92786a2693411576b8b7958fbe395123fa7e1c
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
<<<<<<< HEAD
    patch interview_reminder_url(@interview_reminder), params: { interview_reminder: { applied_by: @interview_reminder.applied_by, company_name: @interview_reminder.company_name, duration: @interview_reminder.duration, interview_date: @interview_reminder.interview_date, interview_round: @interview_reminder.interview_round, question: @interview_reminder.question } }
=======

    patch interview_reminder_url(@interview_reminder), params: { interview_reminder: { applied_by: @interview_reminder.applied_by, company_name: @interview_reminder.company_name, duration: @interview_reminder.duration, interview_date: @interview_reminder.interview_date, interview_round: @interview_reminder.interview_round, question: @interview_reminder.question } }

    patch interview_reminder_url(@interview_reminder), params: { interview_reminder: { company_name: @interview_reminder.company_name, interview_date: @interview_reminder.interview_date, questions: @interview_reminder.questions, status: @interview_reminder.status } }

>>>>>>> 6f92786a2693411576b8b7958fbe395123fa7e1c
    assert_redirected_to interview_reminder_url(@interview_reminder)
  end

  test "should destroy interview_reminder" do
    assert_difference('InterviewReminder.count', -1) do
      delete interview_reminder_url(@interview_reminder)
    end

    assert_redirected_to interview_reminders_url
  end
end
