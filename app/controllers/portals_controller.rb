class PortalsController < ApplicationController
  before_action :set_portal, only: %i[ show edit update destroy ]

  # GET /portals or /portals.json
  def index
    @portals = Portal.all
  end

  # GET /portals/1 or /portals/1.json
  def show
  end

  # GET /portals/new
  def new
    @portal = Portal.new
  end

  # GET /portals/1/edit
  def edit
  end

  # POST /portals or /portals.json
  def create
    @portal = Portal.new(portal_params)

    respond_to do |format|
      if @portal.save
        format.html { redirect_to portal_url(@portal), notice: "Portal was successfully created." }
        format.json { render :show, status: :created, location: @portal }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @portal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /portals/1 or /portals/1.json
  def update
    respond_to do |format|
      if @portal.update(portal_params)
        format.html { redirect_to portal_url(@portal), notice: "Portal was successfully updated." }
        format.json { render :show, status: :ok, location: @portal }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @portal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /portals/1 or /portals/1.json
  def destroy
    @portal.destroy

    respond_to do |format|
      format.html { redirect_to portals_url, notice: "Portal was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def shedule_interview

  @portal = Portal.find_by(id:params[:id])
if @portal.update(status:true)
        # debugger    
     @interview_reminder = InterviewReminder.create!(user_id: @portal.user_id, company_name: @portal.company_name,applied_by: @portal.applied_from )

     # @interview_reminder = InterviewReminder.find_by(id:params[:id])

     redirect_to portal_path
    else
      render :new
  end
end


 # def approve
 #    # debugger
 #      @portal = Portal.find_by(id:params[:id])
 #      # debugger
 #      if @portal.update(status:true)
 #        # debugger    
 #     @interview_reminder = InterviewReminder.create!(user_id: @portal.user_id, start: @portal.login_time)
 #     # MailServiceMailer.approve_atten_req(@portal).deliver_now
 #      redirect_to portals_path
 #    else
 #      render :new
 #    end
 #  end 





  private
    # Use callbacks to share common setup or constraints between actions.
    def set_portal
      @portal = Portal.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def portal_params
      params.require(:portal).permit(:company_name, :applied_from, :date_of_application, :status,:user_id)
    end
end
