Rails.application.routes.draw do

    root 'static_pages#home'
    get '/home' => 'static_pages#home'
    get '/about' => 'static_pages#about'
    get '/help' => 'static_pages#help' 
    get '/account' => 'static_pages#account'  
    get '/login' => 'static_pages#login' 
    get '/contact' => 'static_pages#contact'  
    get '/login' => 'user#login' 
    get '/logout' => 'user#logout'
  

    resources :addresses do
      member do
        get :delete
      end
    end
    resources :catalog_categories
    get '/cart' => 'cart#index'
    get '/cart/clear' => 'cart#clear'
    get '/cart/:id' => 'cart#add'
    get '/cart/remove/:id' => 'cart#remove'
    get '/cart/reduce/:id' => 'cart#reduce'
    get '/cart/increase/:id' => 'cart#increase'
    resources :logins, only: [:show]
    resources :order_items, :except => [:delete]
    resources :orders, :except => [:edit,:delete]
    resources :roles
    resources :products
    get '/product/:id', to: 'products#index'

    resources :user_registrations, :except => [:edit,:delete]
    resources :users, :except => [:delete,:destroy]
end
