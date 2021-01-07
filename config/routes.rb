Rails.application.routes.draw do
  resources :projects
  #root to: "homes#new"
  root to: 'places#index'

  get 'comment1s/new'
  get 'comment1s/create'
  get 'comment1s/show'
  get 'post1s/new'
  get 'post1s/create'
  get 'post1s/show'
  get 'appointments/new'
  get 'homes/new'

  get 'physicians/index'
  get 'physicians/show'
  get 'physicians/new'
  get 'physicians/create'
  get 'patients/index'
  get 'patients/show'
  get 'patients/new'
  get 'patients/create'
  get 'patient/index'
  get 'patient/show'
  get 'patient/new'
  get 'patient/create'

  resources :patients 
  resources :physicians 
  resources :appointments
  #resources :comments
  #resources :posts
  
  resources :places, only: [:new, :create, :edit, :update]
  resources :authors, only: [:new, :create, :edit, :update]

	resources :users
	resources :subscriptions

  resources :post1s
  resources :comment1s
  get 'like/create'  => 'likes#create'
  get 'like/show'  => 'likes#show'

  #get '/subscription/new' => 'users#subscription_create'
end
