Rails.application.routes.draw do
  resources :organisations do
    collection { post :import }
  end
  root 'organisations#index'
end
