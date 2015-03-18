class ItemsController < ApplicationController
 
  http_basic_authenticate_with name: "me", password: "secret",
except: [:index, :show]

	def index
		@items = current_user.items.all
	end

	def show
		@item = current_user.items.find(params[:id])
	end

	def new
		@item = Item.new
	end

	def create
		@item = current_user.items.create(item_params)
		if @item.save
		  redirect_to items_path
		else
			render 'new'
		end
	end

	def edit
		@item = Item.find(params[:id])
	end

	def update
		@item = Item.find(params[:id])

		if @item.update(item_params)
		  redirect_to @item
		else
			render 'edit'
		end
	end

	def destroy
		@item = Item.find(params[:id])
		@item.destroy
		redirect_to @item
	end

	private

	def item_params
		params.require(:item).permit(:name, :description, :ends_on)
	end

end
