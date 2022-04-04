Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  root to: 'static_page#home'
  get 'home' => 'static_page#home'
  get 'help' => 'static_page#help'
  get 'about' => 'static_page#about'
  get 'contact' => 'static_page#contact'
  get 'signup' => 'users#new' 
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  resources :users
  resources :account_activation, only: [:edit]
  # For details on the DSL available within this file,
  # see https://guides.rubyonrails.org/routing.html
end



