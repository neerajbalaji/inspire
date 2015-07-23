Rails.application.routes.draw do
  get 'songs/index'

  get 'songs/upload'

  get 'songs/delete'

  match "songs/upload",:via => [:post], :as => "upload"
match "songs/delete",:via => [:get], :as => "delete"
  match "/share" => "songs#index", via: [:get]

  
  devise_for :users
  resources :posts do
  	member do
  		get "like", to: "posts#upvote"
  		get "dislike", to: "posts#downvote"
  	end
  	resources :comments
	end
  root 'posts#index'
end
