class Comment < ActiveRecord::Base

	#:scope 

	belongs_to :user
	belongs_to :post

end
