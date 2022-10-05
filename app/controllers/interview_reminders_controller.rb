class InterviewRemindersController < ApplicationController
  before_action :set_interview_reminder, only: %i[ show edit update destroy ]
<<<<<<< HEAD

=======
  before_action :authenticate_user!
>>>>>>> 6f92786a2693411576b8b7958fbe395123fa7e1c
  # GET /interview_reminders or /interview_reminders.json
  def index
    @interview_reminders = InterviewReminder.all
  end

  # GET /interview_reminders/1 or /interview_reminders/1.json
  def show
  end

  # GET /interview_reminders/new
  def new
    @interview_reminder = InterviewReminder.new
  end

  # GET /interview_reminders/1/edit
  def edit
  end

  # POST /interview_reminders or /interview_reminders.json
  def create
    @interview_reminder = InterviewReminder.new(interview_reminder_params)
<<<<<<< HEAD
    # debugger
    # MailServiceMailer.one_hour(@interview_reminder).deliver_now
=======

    # debugger
    # MailServiceMailer.one_hour(@interview_reminder).deliver_now

>>>>>>> 6f92786a2693411576b8b7958fbe395123fa7e1c
    respond_to do |format|
      if @interview_reminder.save
        format.html { redirect_to interview_reminder_url(@interview_reminder), notice: "Interview reminder was successfully created." }
        format.json { render :show, status: :created, location: @interview_reminder }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @interview_reminder.errors, status: :unprocessable_entity }
<<<<<<< HEAD
        
=======

>>>>>>> 6f92786a2693411576b8b7958fbe395123fa7e1c
      end
    end
  end

  # PATCH/PUT /interview_reminders/1 or /interview_reminders/1.json
  def update
    respond_to do |format|
      if @interview_reminder.update(interview_reminder_params)
        format.html { redirect_to interview_reminder_url(@interview_reminder), notice: "Interview reminder was successfully updated." }
        format.json { render :show, status: :ok, location: @interview_reminder }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @interview_reminder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interview_reminders/1 or /interview_reminders/1.json
  def destroy
    @interview_reminder.destroy

    respond_to do |format|
      format.html { redirect_to interview_reminders_url, notice: "Interview reminder was successfully destroyed." }
      format.json { head :no_content }
    end
  end

<<<<<<< HEAD
=======

>>>>>>> 6f92786a2693411576b8b7958fbe395123fa7e1c
  def done
      @interview_reminder = InterviewReminder.find_by(id:params[:id])
      @interview_reminder.update(status:true)
      MailServiceMailer.done(@interview_reminder).deliver_now
      redirect_to interview_reminders_path
  end  


<<<<<<< HEAD

=======
>>>>>>> 6f92786a2693411576b8b7958fbe395123fa7e1c
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interview_reminder
      @interview_reminder = InterviewReminder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def interview_reminder_params
<<<<<<< HEAD
      params.require(:interview_reminder).permit(:company_name, :applied_by, :interview_date, :duration, :interview_round, :question,:user_id)
=======

      params.require(:interview_reminder).permit(:company_name, :applied_by, :interview_date, :duration, :interview_round, :question)
      params.require(:interview_reminder).permit(:company_name, :interview_date, :status, :questions,:remark)

>>>>>>> 6f92786a2693411576b8b7958fbe395123fa7e1c
    end
end
