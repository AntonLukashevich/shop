Rails.application.routes.draw do
  resources :products do
  resources :product_attrs
end
end
