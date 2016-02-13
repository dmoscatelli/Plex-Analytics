class GriItemsController < ApplicationController
	before_action :find_gri_item, only: [:show, :edit, :update, :destroy]




	def show
	end

	def index
		@gri_items = GriItem.all
	end

	def new
		@gri_item = GriItem.new
	end

	def create
		@gri_item = GriItem.new(gri_item_params)

		if @gri_item.save
			redirect_to gri_items_path, notice: "Your item was saved"
		else
			render 'new'
		end

	end

	def edit
	end

	def update
	end

	def destroy 
	end 

	private

	def find_gri_item
		@gri_item = GriItem.find(params[:id])
	end 

	def gri_item_params
		params.require(:gri_item).permit(:number, :name, :content)
	end 


end
