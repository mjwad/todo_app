Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "pages#home"
  get '/about', to:"pages#about"
  get '/help', to:"pages#help"
  # Defines the root path route ("/")
  # root "articles#index"
  resources :tbls
end
