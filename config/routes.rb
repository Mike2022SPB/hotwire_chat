Rails.application.routes.draw do
  devise_for :users
  resources :messages, only: %i[create]
  resources :rooms, only: %i[show create], param: :title
  root "rooms#index"
end
