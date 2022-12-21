Rails.application.routes.draw do
  devise_for :users
  resources :schools
	resources :cars
	resources :books
	resources :blogs
	resources :hospitals
	# resources :electronic_goods
	get '/electronic_goods', to: 'electronic_goods#index'
	get '/electronic_goods/new', to: 'electronic_goods#new'
	post '/electronic_goods', to: 'electronic_goods#create'
	get '/electronic_goods/:id', to: 'electronic_goods#show', as: "electronic_good_show"
	get '/electronic_goods/:id/edit', to: 'electronic_goods#edit', as: "edit"
	patch '/electronic_goods/:id', to: 'electronic_goods#update', as: "update"
	delete '/electronic_goods/:id/', to: 'electronic_goods#destroy', as: "electronic_good" 
	resources :schools
	resources :games

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
