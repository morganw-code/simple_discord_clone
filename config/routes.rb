Rails.application.routes.draw do
  devise_for :users
  root to: "pages#index"
  get "/settings", to: "pages#settings", as: "settings"

  get "/messages", to: "messages#index", as: "messages"
end
