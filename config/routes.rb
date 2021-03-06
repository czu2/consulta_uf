Rails.application.routes.draw do
  resources :requests, path: :client
  resources :units

end
