module PostsHelper
attr_accessor :posts_size

	def last_updated
		time_ago_in_words(Post.last.updated_at)
	end

end
