class AnimalsController < ApplicationController
	def index
		@animals = Animal.all
		render('animals/index.html.erb')
	end

	def show
		@animals = Animal.all
		@animal = Animal.find(params[:id])
		render('animals/show.html.erb')
	end

	def new
		@animal = Animal.new
		render('animals/new.html.erb')
	end

	def create
		@animal = Animal.new(params[:animal])
		if @animal.save
			flash[:notice] = "Pokemon captured."
			redirect_to('/animals')
		else
			render('/animals/new.html.erb')
		end
	end

	def edit
		@animal = Animal.find(params[:id])
		flash[:notice] = "Your Pokemon has been updated."
		render('animals/edit.html.erb')
	end

	def update
		@animal = Animal.find(params[:id])
		if @animal.update(params[:animal])
			flash[:notice] = "Pokemon updated."
			redirect_to('/animals')
		else
			render('animals/edit.html.erb')
		end
	end

	def delete
		@animal = Animal.find(params[:id])
		@animal.destroy
		flash[:notice] = "Pokemon deleted."
		redirect_to('/animals')
	end

end