class ItemsController < ApplicationController

	def index
		@items = Item.all
	end

	def show
		@item = Item.find(params[:id])
	end

	def new
		@item = Item.new
	end

	def create
		@item = Item.create(params.require(:item).permit(:name, :description, :ends_on))

		@item.save
		redirect_to items_path
	end

end
