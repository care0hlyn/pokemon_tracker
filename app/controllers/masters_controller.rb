class MastersController < ApplicationController
	def index
		@masters = Master.all
		render('masters/index.html.erb')
	end

	def show
		@masters = Master.all
		@master = Master.find(params[:id])
		render('masters/show.html.erb')
	end

	def new
		@master = Master.new
		render('masters/new.html.erb')
	end

	def create
		@master = Master.new(params[:master])

		if @master.save
			flash[:notice] = "Master added."
			redirect_to('/masters')
		else
			render('/masters/new.html.erb')
		end
	end

	def edit
		@master = Master.find(params[:id])
		flash[:notice] = "Master has been updated."
		render('masters/edit.html.erb')
	end

	def update
		@master = Master.find(params[:id])
		if @master.update(params[:master])
			flash[:notice] = "Master updated."
			redirect_to('/masters')
		else
			render('masters/edit.html.erb')
		end
	end

	def delete
		@master = Master.find(params[:id])
		@master.destroy
		flash[:notice] = "Master deleted."
		redirect_to('/masters')
	end
end