class WorkersController < ApplicationController
	before_action :set_worker, only: [:show, :edit, :update, :destroy]
	def index
		@workers = Worker.all
	end

	def show 
   
	end

	def new
		@worker = Worker.new
	end 

	def create
		@worker = Worker.new(worker_params)
		if @worker.save
			redirect_to workers_path
		else 
			render :new
		end
	end

	def edit
 
	end

	def update
		@worker.update(worker_params)
		redirect_to workers_path
	end

	def destroy
		@worker.destroy
		redirect_to workers_path
	end

	private
		def set_worker
			@worker = Worker.find(params[:id])
		end
		def worker_params
			params.require(:worker).permit(:name, :persnr, :gehalt, :eintritt)
		end
	end
   