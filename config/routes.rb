Rails.application.routes.draw do
	post '/home/contact_us' => 'home#index', as: "contact_us"
	resources :posts
  	root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
