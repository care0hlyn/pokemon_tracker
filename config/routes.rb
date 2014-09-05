Rails.application.routes.draw do
  match('/', {:via => :get, :to => 'animals#index'})
  match('/animals', {:via => :get, :to => 'animals#index'})
  match('/animals/:id/show', {:via => :get, :to => 'animals#show'})
  match('/animals/new', {:via => :get, :to => 'animals#new'})
  match('/animals', {:via => :post, :to => 'animals#create'})
  match('/animals/:id', {:via => :delete, :to => 'animals#delete'})
  match('/animals/:id/edit', {:via => :get, :to => 'animals#edit'})
  match('/animals/:id', {:via => [:patch, :put], :to => 'animals#update'})

  match('/', {:via => :get, :to => 'trainers#index'})
  match('/trainers', {:via => :get, :to => 'trainers#index'})
  match('/trainers/:id/show', {:via => :get, :to => 'trainers#show'})
  match('/trainers/new', {:via => :get, :to => 'trainers#new'})
  match('/trainers', {:via => :post, :to => 'trainers#create'})
  match('/trainers/:id', {:via => :delete, :to => 'trainers#delete'})
  match('/trainers/:id/edit', {:via => :get, :to => 'trainers#edit'})
  match('/trainers/:id', {:via => [:patch, :put], :to => 'trainers#update'})
end
