class MailServiceMailer < ApplicationMailer
<<<<<<< HEAD
	default from: 'hr@railskart.com'

	 def one_hour(interview_reminder)
	 	debugger
	 	@interview_reminder=interview_reminder
    user=interview_reminder.user_id
    @user=User.find_by(id:user)
   		 # @admin=User.find_by(admin:true)
    mail(to: @user.email,cc:@admin.email,subject: "#{@user.name} posted an application for leave.")
	 end

	 def thirty_minutes
	 	
	 end


	 def fifteen_minutes
	 	
	 end


	 def ten_minutes
	@leave_request=leave_request
    # user=leave_request.user_id
    @user=User.find_by(id:user)
    @admin=User.find_by(admin:true)
    mail(to: @user.email,cc:@admin.email,subject: "#{@user.name} posted an application for leave.")
	 end

	 def five_minutes
	 	
	 end
	 def done(interview_reminder)
	 	# debugger
	@interview_reminder=interview_reminder
    user=interview_reminder
    @user=User.find_by(id:user)
    mail(to: @user.try(:email),cc:@user.email,subject: "posted an application for leave.")
	 	
	 end
=======
>>>>>>> 59b0e8f8d6ee3f8182b2cb1767a8da9acee52db5
end
