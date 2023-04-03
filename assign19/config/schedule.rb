
every 1.day, at: '9:00pm' do
  runner 'UserMailer.send_night_email_to_all_users.deliver_now'
end

# every 1.day, at: '8:24 pm' do
#   runner "User.where('birthdate IS NOT NULL').each do |user|
#     UserMailer.happy_birthday(user).deliver_now if user.birthday_today?
#   end"
# end

