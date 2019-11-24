Rails.application.routes.draw do
  # Set the homepage as the static home view
  root 'static_pages#home'
  # The static pages:
  get '/home' => 'static_pages#home'
  get '/product' => 'products#index'
  get '/about' => 'static_pages#about'
  get '/help' => 'static_pages#help' 
  get '/account' => 'static_pages#account'  
  get '/login' => 'static_pages#login' 
  get '/contact' => 'static_pages#contact'  
  get '/cart' => 'static_pages#cart'
  # User Logins
  get '/login', to: 'user_login#login'
  get '/logout', to: 'user_login#logout'
  
  #
  # Users should be able to make changes to their address. Do we store historical versions of the address for a current order and destroy afterwards?
  resources :addresses do
    member do
      get :delete
    end
  end
  # Users have a choice of categories to filter by. The administrators should be able to create, update and delete these.
  resources :catalog_categories
  # Logins - This would show the login history for the user to the user or the administrator (perhaps the adminstrator searches by the user profile). They have no need to edit these details. This is view-only content.
  resources :logins, only: [:show]
   
  # Users should be able to see the listed items in their order, add/remove items but only at the point before the payment has been made and not afterwards.
  resources :order_items, :except => [:delete]
   # Users need to be able to view the orders but don't necessarily need to edit or delete the orders. A status can be changed to 'Cancelled' after a button is clicked.
  resources :orders, :except => [:edit,:delete]
  # The user should have the ability to delete/destroy their account although we can keep other details like order history. Administrators should have the ability to create new administrators, and users can sign-up to the website (normal user role - created).
  resources :roles
  # Need admins to be able to create new products and make any necessary changes like the name and prices
  resources :products
  # The user registrations will allow non-users to create new user accounts. User registrations should not be editable/deleted.
  resources :user_registrations, :except => [:edit,:delete]
  # As mentioned above the users can delete/destroy their account. Non-identifiable data can be kept (orders).
  resources :users, :except => [:delete,:destroy]




  get 'demo/index'
  get ':controller(/:action)'
  root 'demo#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
