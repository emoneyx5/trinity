class Story < ActiveRecord::Base
	belongs_to :author, class_name: "User", foreign_key: :user_id


	has_many :votes
	has_many :voters, through: :votes, class_name: "User", source: :user

	has_many :comments
	has_many :commentors, through: :comments, class_name: "User", source: :user

	has_many :story_keywords
	has_many :keywords, through: :story_keywords
end
