class User:
  def __init__(self):
    pass
    

  def signup(self, firstname, lastname, handle, photo_url , email, password, login):
    self.firstname = firstname
    self.lastname = lastname
    self.handle = handle
    self.photo_url = photo_url
    self.email = email
    self.password_hash = password
    self.is_logged_in = False
    return 
    
  def login(self, email, password):
    if self.email = email && self.password_hash = password
      self.is_logged_in = True
    else:
      return "Invalid Login Details"
  
  def logout(self):
    if self.is_logged_in is True:
      self.is_logged_in = False