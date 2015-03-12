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
		@item = Item.create(article_params)

		if @item.save
		  redirect_to items_path
		else
			render 'new'
		end
	end

	private
	  def article_params
		params.require(:item).permit(:name, :description, :ends_on)
	end

end
