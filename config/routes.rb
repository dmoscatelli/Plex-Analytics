Rails.application.routes.draw do

	resources :gri_items do 
		collection do
			get :autocomplete
			get 'search'
			
		end 
	end 

  	

   	root 'pages#index'


   get '/dashboard', :to => 'pages#dashboard'
   get '/culture', :to => 'pages#culture'
   get '/careers', :to => 'pages#careers'
   get '/software', :to => 'pages#software'
   get '/principles', :to => 'pages#principles'
   get '/about', :to => 'pages#about'
   get '/contact', :to => 'pages#contact'
   get '/services', :to => 'pages#services'
   get '/about2', :to => 'pages#about2'
   get '/faq', :to => 'pages#faq'
   get '/data-analytics', :to => 'pages#data'
   get '/profitability', :to => 'pages#profitability'
   get '/sustainability', :to => 'pages#sustainability'
   get '/research', :to => 'pages#research'
   get '/industries', :to => 'pages#industries'
   get '/participants', :to => 'pages#participants'
end
