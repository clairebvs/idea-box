Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  get '/login', to: 'sessions#new'

  resources :users, only: [:new, :create, :show]

  resources :users do
    resources :ideas
  end
end
