# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create(provider: "twitter", uid: "25955180", name: "Edwin")

keyword1 = Keyword.create(wordone: "heart", wordtwo: "soul", wordthree: "mind", story_id: Story.all.sample)
keyword2 = Keyword.create(wordone: "love", wordtwo: "peace", wordthree: "soul", story_id: Story.all.sample)

Story.create(author: user1, title: "first story", body: "first text", keyword: keyword1)
Story.create(author: user1, title: "second story", body: "second text", keyword: keyword2)
Story.create(author: user1, title: "third story", body: "third text", keyword: keyword1)
Story.create(author: user1, title: "fourth story", body: "fourth text", keyword: keyword2)

Vote.create(user: user1, story: Story.all.sample)
Vote.create(user: user1, story: Story.all.sample)
Vote.create(user: user1, story: Story.all.sample)

Comment.create(user: User.all.sample, text: "first comment")
Comment.create(user: User.all.sample, text: "second comment")
Comment.create(user: User.all.sample, text: "third comment")
Comment.create(user: User.all.sample, text: "fourth comment")