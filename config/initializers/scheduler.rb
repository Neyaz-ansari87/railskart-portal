# require 'rufus-scheduler'

# scheduler = Rufus::Scheduler.new

# scheduler.in '3s' do
# 	debugger
# #For Birthday Wishing Mails
# # scheduler.cron '00 09 * * *' do
#   @interview_reminders = InterviewReminder.where("date_part('month', dob) = ? and date_part('day', dob) = ?", Date.current.month, Date.current.day) 
#   if @interview_reminders.present?
#     @interview_reminders.each do |employee|
      	
#     end
#   end
# end

# #Attendance for present-Absent-holiday
# scheduler.cron '00 15 * * *' do  
#   @users = User.all
#   @holiday =Holidaylist.where("date_part('month', startdate) = ? and date_part('day', startdate) = ? and date_part('year', startdate) = ?", Date.current.month, Date.current.day, Date.current.year)
#   @sat =Date.today.saturday?
#   @sun =Date.today.sunday? 
#   @users.each do |user|
#       @attendances =Attendance.where(user_id: user.id)
#       @attnd = @attendances.where("date_part('month', created_at) = ? and date_part('day', created_at) = ? and date_part('year', created_at) = ?", Date.current.month, Date.current.day, Date.current.year)
#       if @attnd.present?
#         @attnd.update(present_status: true)
#       elsif @holiday.present? || @sat == true || @sun == true
#          Attendance.create(user_id: user.id, comment:"Holiday", present_status: true)
#         else
#          Attendance.create(user_id: user.id, comment: "Absent", present_status: false)
#       end  
#   end  
# end


# #For Auto logout if user logged in
# scheduler.cron '00 22 * * *' do  
#   @users =User.all
#   @users.each do |user|
#     @attendances =Attendance.where(user_id: user.id, present_status: true, end:nil) 
#     @att = @attendances.where.not(start:nil)
#     @attlast = @att.last if @att.present?
#     @attlast.update(end:Time.zone.now) if @attlast.present? 
#   end  
# end


require 'rufus-scheduler'

scheduler = Rufus::Scheduler.new

scheduler.in '3s' do

	# debugger
<<<<<<< HEAD
  puts 'Hello... Rufus'
=======
  
>>>>>>> 6f92786a2693411576b8b7958fbe395123fa7e1c
end