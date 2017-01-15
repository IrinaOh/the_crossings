Rails.application.routes.draw do
	post '/home/contact_us' => 'home#index', as: "contact_us"
	get '/the_crossings' => 'home#the_crossings'
	get '/amenities' => 'home#amenities'
	get '/heber_valley' => 'home#heber_valley'
	resources :posts
  	root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
