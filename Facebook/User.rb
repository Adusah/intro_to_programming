class User
  attr_accessor :firstname,:lastname ,:email,:password_hash, :logged_in, :profile_pic

  def initialize()
  end
  
  
  def signup(firstname, lastname,email, password, profile_pic_url )
    @email = email
    @firstname = firstname
    @lastname = lastname
    @password_hash = password
    @profile_pic = profile_pic_url
  end
  
  
  def signin(email, password)
    if @email == email  && @password_hash = password
      @logged_in = True
    else
      return "Invalid Login Details"
    end
  end
  
  def signout()
    if logged_in == True
      @logged_in = False
    end
  end

  def change_pic(profile_pic_url)
    @profile_pic = prifile_pic.push(profile_pic_url) 
  def 

  def user_friends(username)
    @friends.push(username)
  end