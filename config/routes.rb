Rails.application.routes.draw do
  # get 'bloggers/new'

  # get 'bloggers/show'

  # get 'bloggers/create'

  # get 'bloggers/index'

  resources :bloggers, only: [:new, :show, :index, :create]
  resources :destinations, only: [:index, :show]
  resources :posts, only: [:create, :edit, :show, :new, :index, :update]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
