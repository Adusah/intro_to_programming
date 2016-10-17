class Post
  attr_accessor :posted_by,:post_content,:shared_by,:liked_by, :post_title

    def initialize()
      @shared_by = Array.new()
      @liked_by = Array.new()
    end

  
  def share(user)
    @shared_by.push(user)
  end
    
  def like(user)
    @liked_by.push(user)
  end
  
  def make_a_post(post_title, post_content,post_pic_url)
    @post_title = post_title
    @post_content = post_content
    @post_pic = post_pic_url
    @posted_by.push(user)
  end

end

