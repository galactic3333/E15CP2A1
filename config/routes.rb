Rails.application.routes.draw do

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  resources :histories

  root "histories#index"
  get 'myhistories', to: 'histories#myhistories'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
