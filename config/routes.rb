Rml::Application.routes.draw do

  resources :teams

  resources :users
  resources :sessions

  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"
  get "home" => "users#home", :as => "home"
  get "about" => "users#about", :as => "about"
  
  root :to => "teams#new"
end
