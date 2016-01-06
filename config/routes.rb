Rails.application.routes.draw do

	resources :gri_items do 
		collection do
			get :autocomplete
			get 'search'
			
		end 
	end 

  	

   	root 'pages#index'


   get '/about', :to => 'pages#about'
   get '/contact', :to => 'pages#contact'
   get '/services', :to => 'pages#services'
   get '/about2', :to => 'pages#about2'



end
