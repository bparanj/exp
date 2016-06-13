Rails.application.routes.draw do
  resources :product_imports

  resources :products do
    collection do
      post :import
    end
  end
  
  root to: 'products#index'
end
