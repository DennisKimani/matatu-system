Rails.application.routes.draw do
  resources :galleries
  resources :saccos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'saccos#index'
end
