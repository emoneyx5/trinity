class Story < ActiveRecord::Base
	belongs_to :author, class_name: "User", foreign_key: :user_id
	belongs_to :keyword

	has_many :votes
	has_many :voters, through: :votes, class_name: "User", source: :user

	has_many :comments
	has_many :commentors, through: :comments, class_name: "User", source: :user
end
