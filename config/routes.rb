Rails.application.routes.draw do
  root to: 'static_page#home'
  get 'home' => 'static_page/home'
  get 'help' => 'static_page#help'
  get 'about' => 'static_page#about'
  get 'contact' => 'static_page#contact'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end



