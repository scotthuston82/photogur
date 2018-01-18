Rails.application.routes.draw do
  get 'pictures' => 'pictures#index'

  post 'pictures' => 'pictures#create'
  get 'pictures/new' => 'pictures#new'

  get 'pictures/:id' => 'pictures#show'

  root 'pictures#index'
  get 'pictures' => 'pictures#index'

  get 'pictures/:id/edit' => "pictures#edit"
  patch 'pictures/:id' => "pictures#update"

    delete 'pictures/:id' => 'pictures#destroy'

  get 'users/new' => 'users#new'
  post 'users' => 'users#create'

  get 'sessions/new' => 'sessions#new'
  post 'sessions/new' => 'sessions#create'
  delete 'sessions/new' => 'sessions#destroy'
end
