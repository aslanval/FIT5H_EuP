class CubesController < ApplicationController
	before_action :set_cube, only: [:show, :edit, :update, :destroy]
	def index
		@mitarbeiters = Mitarbeiterdb.all
	end

	def show 
  
	end

	def new
		@mitarbeiter = Mitarbeiterdb.new
	end

	def create
		@mitarbeiter = Mitarbeiterdb.new(cube_params)
		if @mitarbeiter.save
			redirect_to cubes_path
		else 
			render :new
		end
	end

	def edit

	end
	
	def update
		@movie.update(movie_params)
		redirect_to movies_path
	end

	def destroy
		@mitarbeiter.destroy
		redirect_to cubes_path
	end

	private
	def set_cube
		@mitarbeiter = Mitarbeiterdb.find(params[:id])
	end
	def cube_params
			params.require(:mitarbeiter).permit(:name, :personalnr, :eintritt, :gehalt)
	end
end
 