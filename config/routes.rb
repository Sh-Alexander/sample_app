Rails.application.routes.draw do
  get 'users/new'
  root to: 'static_page#home'
  get 'home' => 'static_page#home'
  get 'help' => 'static_page#help'
  get 'about' => 'static_page#about'
  get 'contact' => 'static_page#contact'
  get 'signup' => 'users#new' 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end



