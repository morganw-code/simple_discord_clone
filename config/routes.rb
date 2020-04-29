Rails.application.routes.draw do
  get "/", to: "pages#index", as: "root"
  get "/settings", to: "pages#settings", as: "settings"
end
