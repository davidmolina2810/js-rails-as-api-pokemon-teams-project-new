Rails.application.routes.draw do
  resources :pokemons, only: [:index, :show, :destroy, :new, :create]
  resources :trainers, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end