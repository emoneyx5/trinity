class Vote < ActiveRecord::Base
	belongs_to :user
	belongs_to :story

	def vote(user)
		if self.voters.include?(user)
			return false
		else
			self.votes.create(user: user)
			return true
		end
	end

	def score
		self.votes.size
	end

end
