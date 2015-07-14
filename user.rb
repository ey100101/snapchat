class User
  attr_accessor :username, :password, :friends
  def initialize(username, password)
    @username = username
    @password = password
    @friends = []
    @messageque = []
  end
  
  def add_friend(new)
    @friends.push(new)
  end
  
  def send_message(message)
    if @friends.include?(message.receiver)
      #create new message
      
#       msg = Message.new(, user2, "what hath god wrought?")
      
      #find index of friend and add to receiver's queue
      num=@friends.find_index(message.receiver)
      @friends[num].add_message(message)
    else
      puts "receiver is not in your friends list"      
    end 
  end
  
  def add_message(message)
    @messageque.push(message)
  end
  
  def messageque
    return @messageque
  end
  
end