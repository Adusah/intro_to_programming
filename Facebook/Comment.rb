class Comment
	attr_accessor :posted_by,:comment_content, :liked_by,

	def initialize()
      @liked_by = Array.new()
    end
   	
   	def like(user)
    	@liked_by.push(user)
  	end

  	def post(content, user)
  		@comment_content = content
  		@posted_by = user
   	end
end