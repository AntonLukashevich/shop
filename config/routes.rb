Rails.application.routes.draw do
  get 'supplier_lists/index'
  devise_for :users, controllers: {registrations: 'users'}
  get 'outlet_lists/index'
  get 'storehouses/index'
  get 'storehouses/show'
  get 'storehouses/new'
  get 'storehouses/edit'
  get 'storehouse/index'
  get 'storehouse/show'
  get 'storehouse/new'
  get 'storehouse/edit'
  get 'orders/index'
  get 'orders/show'
  get 'orders/new'
  get 'orders/edit'
  get 'outlets/index'
  get 'outlets/show'
  get 'outlets/new'
  get 'outlets/edit'
  get 'emails/index'
  get 'phones/index'
  get 'users/index'
  get 'addresses/index'
  get 'cities/index'
  get 'roles/index'
  get 'suppliers/index'
  get 'technics/index'
  get 'folks/index'
  get 'keyboards/index'
  get 'drums/index'
  get 'winds/index'
  get 'boweds/index'
  get 'categories/index'
  get 'guitars/index'
  get 'welcome/index'

  resources :products do
  	resources :product_attrs
  end

	resources :guitars
	resources :categories
	resources :boweds
	resources :winds
	resources :drums
	resources :keyboards
	resources :folks
	resources :technics
  
	resources :suppliers do
    resources :supplier_lists
  end
	resources :roles
  resources :cities
  resources :addresses
  resources :users
  resources :phones
  resources :emails

  resources :outlets do
    resources :outlet_lists
  end
  
  resources :orders do
    resources :order_lists
  end
  
  resources :storehouses
	root 'welcome#index', as: "home"
	
end
