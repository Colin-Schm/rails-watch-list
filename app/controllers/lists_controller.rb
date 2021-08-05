class ListsController < ApplicationController

	before_action :get_params, only: [:show]

	def index
		@lists = List.all
	end

	def show
	end

	def new
		@list = List.new
	end

	def create
		@list = List.new(list_params)
		@list.save
		redirect_to lists_path(@list)
	end

	def get_params
		@list = List.find(params[:id])
	end

	private

  def list_params
    params.require(:list).permit(:name)
  end
end