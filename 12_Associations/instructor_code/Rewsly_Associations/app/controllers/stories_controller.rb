class StoriesController < ApplicationController
  def index
    @stories = params[:q] ? Story.search_for(params[:q]) : Story.all
  end

  def show
    @story = Story.find params[:id]
    @comment = Comment.new(story: @story)
  end

end
