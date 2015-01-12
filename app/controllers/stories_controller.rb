class StoriesController < ApplicationController

	def index
		@stories = Story.all
	end

	def new
		@story = Story.new
		@current_user = User.find(id=session[:user_id])
	end

	def create
		Story.create(story_params)
		redirect_to stories_path
	end

	def edit
		@story = Story.find(params[:id])
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
		params.require(:story).permit(:title, :body, :user_id, :keywords)
	end
end
