Rails.application.routes.draw do
  resources :products do
    collection do
      post :import
    end
  end
  
  root to: 'products#index'
end
