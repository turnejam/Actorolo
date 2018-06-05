Rails.application.routes.draw do

  get 'search/index'

  devise_for :users
  get 'welcome/about'

  root to: 'welcome#about'

  resources :contacts

  resources :events

  resources :projects

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
