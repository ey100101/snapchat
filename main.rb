require './user.rb'
require './message.rb'

user1= User.new("pinkunicorn02", "password")
user2= User.new("bluepanda03", "pword")

user1.add_friend(user2)

msg = Message.new(user1, user2, "what hath god wrought?")
user1.send_message(msg)

puts user2.messageque[0].text