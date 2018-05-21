Rails.application.routes.draw do
  
  devise_for :users
  get 'welcome/about'

  root to: 'welcome#about'

  resources :contacts

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
