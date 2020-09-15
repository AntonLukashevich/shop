Rails.application.routes.draw do
	get 'welcome/index'

  	resources :products do
  		resources :product_attrs
	end

	root 'welcome#index', as: "home"
end
