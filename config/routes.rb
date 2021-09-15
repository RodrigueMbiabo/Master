Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'hello', to: 'welcome#hello'
  resources :calculations
  resources :categories
  root to: redirect('/calculations')
end
