class User < ActiveRecord::Base

	has_many :stories
	has_many :votes
	has_many :comments

	def may_edit(item)
    self.is_admin || item.user.id == self.id
  end

	def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = "NAME"
    end
  end
end
