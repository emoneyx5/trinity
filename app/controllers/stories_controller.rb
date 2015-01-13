class StoriesController < ApplicationController

	def index
		@stories = Story.all
	end

	def new
		@story = Story.new
		keyword = Keyword.last
	end

	def show
		@story = Story.find(params[:id])
	end

	def create
		@story = Story.create(story_params)
		@keyword = Keyword.last
		@story.keywords.create(wordone: @keyword.wordone, wordtwo: @keyword.wordtwo, wordthree: @keyword.wordthree)
		redirect_to stories_path
	end

	def edit
		@story = Story.find(params[:id])
		@keyword = @story.keywords
	end

	def update
		@story = Story.find(params[:id])
		@story.update_attributes(story_params)
		redirect_to stories_path
	end

	def destroy
		@story = Story.find(params[:id])
		@story.destroy
		redirect_to stories_path
	end

	private

	def story_params
		params.require(:story).permit(:title, :body, :user_id)
	end
end
