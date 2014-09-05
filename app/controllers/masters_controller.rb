class MastersController < ApplicationController
	def index
		@trainers = Trainer.all
		render('trainers/index.html.erb')
	end

	def show
		@trainers = Trainer.all
		@trainer = Trainer.find(params[:id])
		render('trainers/show.html.erb')
	end

	def new
		@trainer = Trainer.new
		render('trainers/new.html.erb')
	end

	def create
		@trainer = Trainer.new(params[:trainer])
		if @trainer.save
			flash[:notice] = "Trainer added."
			redirect_to('/trainers')
		else
			render('/trainers/new.html.erb')
		end
	end

	def edit
		@trainer = Trainer.find(params[:id])
		flash[:notice] = "Trainer has been updated."
		render('trainers/edit.html.erb')
	end

	def update
		@trainer = Trainer.find(params[:id])
		if @trainer.update(params[:trainer])
			flash[:notice] = "Trainer updated."
			redirect_to('/trainers')
		else
			render('trainers/edit.html.erb')
		end
	end

	def delete
		@trainer = Trainer.find(params[:id])
		@trainer.destroy
		flash[:notice] = "Trainer deleted."
		redirect_to('/trainers')
	end
end