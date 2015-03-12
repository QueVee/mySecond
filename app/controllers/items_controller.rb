class ItemsController < ApplicationController

	def index
		@items = Item.all
	end

	def show
	end

	def new
		@item = Item.new
	end

	def create
		@item = Item.create(params.require(:item).permit(:name, :description, :ends_on))
	end

end
