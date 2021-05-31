Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :gnomes, only: %i[index show] do
    resources :bookings, only: %i[new create edit update]
  end
  get 'my_bookings', to: 'pages#my_bookings'
end
