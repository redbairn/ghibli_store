Rails.application.routes.draw do

  get 'welcome/index'
  devise_for :admins
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }, controllers: { registrations: "registrations" }   do 
    resources :orders, except: [:edit, :destroy]
  end
  
  #devise_for :static_pages
  #devise_for :users, controllers: { registrations: "registrations" }
  
    root 'static_pages#home'
    get "/welcome" => "static_pages#welcome", :as => "user_root"
    get '/home' => 'static_pages#home'
    get '/about' => 'static_pages#about'
    get '/help' => 'static_pages#help' 
    get '/account' => 'static_pages#account'  
    get '/contact' => 'static_pages#contact'  
    get '/login' => 'user_login#login' 
    get '/logout' => 'user_login#logout'
  
  

    resources :addresses do
      member do
        get :delete
      end
    end
    resources :categories
    get '/cart' => 'cart#index'
    get '/cart/clear' => 'cart#clear'
    get '/cart/:id' => 'cart#add'
    get '/cart/remove/:id' => 'cart#remove'
    get '/cart/reduce/:id' => 'cart#reduce'
    get '/cart/increase/:id' => 'cart#increase'
    get 'category/:id' => 'static_pages#category'
    get '/checkout' => 'cart#createOrder'
    resources :logins, only: [:show]
    resources :orders, except: [:edit, :destroy] do
      resources:orderitems
    end
    
    
    resources :roles
    resources :products
    get '/product/:id', to: 'products#index'
    resources :user_logins
    resources :user_registrations, :except => [:edit,:delete]
    resources :users, :except => [:delete,:destroy]
    
    post '/search' => 'products#search'
    get '/aboutSend/:id' => 'static_pages#aboutSend'
end
