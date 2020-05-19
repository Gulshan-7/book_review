Rails.application.routes.draw do
 
	resources :books do
		resources :notes , only: [:create , :destroy]
	end
	root to: "books#index"


	resources :sessions , only: [:new , :create , :destroy]
	get '/login', to: 'sessions#new', as: 'login'
   delete '/logout', to: 'sessions#destroy', as: 'logout'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
