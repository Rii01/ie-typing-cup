Rails.application.routes.draw do
  get 'google_login_api/callback'
  get 'static_pages/before_login'
  get 'static_pages/after_login'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'static_pages#before_login'
  get '/after_login', to: 'static_pages#after_login'
  post '/google_login_api/callback', to: 'google_login_api#callback'
end
