Rails.application.routes.draw do
  resources :imgs
  resources :ad_dets
  resources :ads
  resources :bus_stops
  resources :bus_dows
  resources :buses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :buses, only: [:index, :show]
    resources :bus_stops, only: [:index, :show]
    resources :ads, only: [:index, :show]
    resources :imgs, only: [:index, :show]
  end
  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
