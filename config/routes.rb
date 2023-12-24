Rails.application.routes.draw do
  devise_for :users
  resources :messages, only: %i[create]
  resources :rooms, only: %i[show create], param: :title
  root "rooms#index"
  get "/get_rooms_data", to: "rooms#get_rooms_data"
  get "/get_rooms_data", to: "rooms#get_rooms_data"
  post "/create_message_use_api/:room_id/:room_message", to: "messages#create_message_using_api"
end
