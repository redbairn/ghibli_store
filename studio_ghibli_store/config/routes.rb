Rails.application.routes.draw do
  resources :roles, :except => [:delete,:destroy, :new]
  resources :users, :except => [:delete,:destroy]
  
  

  get 'user_registrations/index'

  get 'user_registrations/show'

  get 'user_registrations/new'

  get 'user_registrations/edit'

  get 'user_registrations/delete'

  get 'logins/index'

  get 'logins/show'

  get 'logins/new'

  get 'logins/edit'

  get 'logins/delete'

  get 'addresses/index'

  get 'addresses/show'

  get 'addresses/new'

  get 'addresses/edit'

  get 'addresses/delete'

  get 'stock/index'

  get 'stock/show'

  get 'stock/new'

  get 'stock/edit'

  get 'stock/delete'

  get 'order_items/index'

  get 'order_items/show'

  get 'order_items/new'

  get 'order_items/edit'

  get 'order_items/delete'

  get 'orders/index'

  get 'orders/show'

  get 'orders/new'

  get 'orders/edit'

  get 'orders/delete'

  get 'catalog_categories/index'

  get 'catalog_categories/show'

  get 'catalog_categories/new'

  get 'catalog_categories/edit'

  get 'catalog_categories/delete'

  get 'users/index'

  get 'users/show'

  get 'users/new'

  get 'users/edit'

  get 'users/delete'

  get 'demo/index'
  get ':controller(/:action)'
  root 'demo#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
