Rails.application.routes.draw do
  resources :group
  root 'groups#index'
end
