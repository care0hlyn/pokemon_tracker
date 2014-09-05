Rails.application.routes.draw do
  match('/', {:via => :get, :to => 'animals#index'})
  match('/animals', {:via => :get, :to => 'animals#index'})
end
