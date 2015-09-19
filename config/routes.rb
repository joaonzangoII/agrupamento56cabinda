Rails.application.routes.draw do
  devise_for :users
  mount Attachinary::Engine => "/attachinary"
  # devise_for :users, path: "auth", path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }
  get 'welcome/index'
  post "/search" => "articles#search", :as => :search
  root 'welcome#index'
  resources :articles
end
