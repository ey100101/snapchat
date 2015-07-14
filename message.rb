class Message
  attr_reader :sender, :receiver, :text
  def initialize(sender, receiver, text)
    @sender = sender
    @receiver =receiver
    @text= text
  end
end