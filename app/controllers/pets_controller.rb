class PetsController < ApplicationController
	def index
		@pets = Pet.all
	end

	def show
		@pet = Pet.find(params[:id])
	end

	def new
		@pet = Pet.new
	end

	def create
		@pet = Pet.create(pets_params)
		redirect_to root_path
	end

	def destroy
		@pet = Pet.find(params[:id])
		@pet.destroy
		redirect_to root_path
	end

	def clone
		@pet = Pet.find(params[:id])
		@clone_pet = @pet.dup
		@clone_pet.save
		redirect_to root_path
	end


	private

	def pets_params
		params.require(:pet).permit(:name, :address, :category, :found_on)
	end
end
