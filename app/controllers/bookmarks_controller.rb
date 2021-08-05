class BookmarksController < ApplicationController

	before_action :get_book_params, only: [:show]

	def index
		@bookmarks = Bookmark.all
	end

	def show
	end

	def new
    @list = List.find(params[:list_id])
		@bookmark = Bookmark.new	
	end

	def create
		@bookmark = Bookmark.new(bookmark_params)
		@bookmark.save
		redirect_to lists_path(@list)
	end

	def get_book_params
		@list = Bookmark.find(params[:id])
	end

	private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end
end
