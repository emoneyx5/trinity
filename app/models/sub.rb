class Sub < ActiveRecord::Base
	has_many :comments

	def top_level_comments
    self.comments.where(parent_id: nil)
  end

end
