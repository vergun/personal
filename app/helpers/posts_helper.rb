module PostsHelper

	def site_last_updated?
		@posts_updated = Post.all.sort_by{|post| post.updated_at}
		@posts_created = Post.all.sort_by{|post| post.created_at}
		@posts_created.last.created_at > @posts_updated.last.updated_at ? time_ago_in_words(@posts_created.last.created_at) : time_ago_in_words(@posts_updated.last.updated_at)
	end

end
