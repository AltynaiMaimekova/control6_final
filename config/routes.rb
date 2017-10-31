Rails.application.routes.draw do
  
  
  get ':user_name', to: 'profiles#show', as: :profile
  root "posts#index"
  resources :posts do
  	resources :comments
  end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
