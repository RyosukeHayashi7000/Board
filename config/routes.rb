Rails.application.routes.draw do
  get 'mypage' => 'users#me'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root 'boards#index'
  root 'home#index'
  resources :users, only: %i[new create]
  resources :boards
end  

