Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get 'home/about', to: "homes#about"
  get 'home/app', to: "homes#app"
  get 'home/premium', to: "homes#premium"
  resources :todo, only:[:index, :create,:show,:edit,:update]
end
