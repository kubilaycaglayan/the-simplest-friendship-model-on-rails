Rails.application.routes.draw do
  get 'invitations/update'
  get 'invitations/create'
  get 'invitations/destroy'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users
  root 'sessions#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
