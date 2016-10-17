
class Message:
  def __init__(self):
    self.sender = ""
    self.receiver = ""
    self.seen_time = ""
    self.content = ""
  
  def send(self, sender, receiver, content):
    self,sender = sender
    self.receiver = receiver
    self.content = content
    