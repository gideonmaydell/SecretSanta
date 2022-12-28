Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :events, except: %i[edit update] do
    resources :participants, only: [:create]
    get "pairs", to: "events#assigning"
  end
end
