class MailServiceMailer < ApplicationMailer
	default from: 'hr@railskart.com'

	 def one_hour(interview_reminder)
	 	debugger
	 	@interview_reminder=interview_reminder
    user=interview_reminder.user_id
    @user=User.find_by(id:user)
   		 # @admin=User.find_by(admin:true)
    mail(to: @user.email,subject: "Reminder For your before one hour stay prepared.")
	 end

	 def thirty_minutes(interview_reminder)
	 	@interview_reminder=interview_reminder
    user=interview_reminder
    @user=User.find_by(id:user)
    mail(to: @user.try(:email),cc:@user.email,subject: "Reminder For your before thirty minutes stay prepared.")
	 end


	 def fifteen_minutes(interview_reminder)
	 	@interview_reminder=interview_reminder
    user=interview_reminder
    @user=User.find_by(id:user)
    mail(to: @user.try(:email),cc:@user.email,subject: "Reminder For your before fifteen minutes stay prepared.")
	 end


	 def ten_minutes(interview_reminder)
	@leave_request=leave_request
    # user=leave_request.user_id
    @user=User.find_by(id:user)
    @admin=User.find_by(admin:true)
    mail(to: @user.email,cc:@admin.email,subject: "#{@user.name} Reminder For your interview before ten minutes stay prepared.")
	 end

	 def five_minutes(interview_reminder)
	 	@interview_reminder=interview_reminder
    user=interview_reminder
    @user=User.find_by(id:user)
    mail(to: @user.try(:email),cc:@user.email,subject: "Reminder For your before 5 minutes stay prepared.")
	 end

	 
	 def done(interview_reminder)
	 	# debugger
	@interview_reminder=interview_reminder
    user=interview_reminder
    @user=User.find_by(id:user)
    mail(to: @user.try(:email),cc:@user.email,subject: "posted an application for leave.")
	 	
	 end
end
