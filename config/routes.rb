Rails.application.routes.draw do
  root to: 'static_page#home'
  get 'static_page/help'
  get 'static_page/about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end



