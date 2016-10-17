class Tweet:
  def __init__(self):
    self.shared_by = []
    self.liked_by = []
    self.tweetedby = []
  
  def share(self, user):
    self.shared_by.append(user.handle)
    
  def like(self, user):
    self.liked_by.append(user.handle)
    
  def tweet(self, user):
    self.tweeted_by.append(user.handle)

  def retweet(self, user):
    pass

  def quote_retweet(self, user):
    pass