Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :tasks
  # # CREATE
  # get 'tasks/new', to: 'tasks#new'
  # post 'tasks', to: 'tasks#create'
  # # READ
  # get 'tasks', to: 'tasks#index'
  # get 'tasks/:id', to: 'tasks#show', as: 'task'
  # # UPDATE
  # get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit'
  # patch 'tasks/:id', to: 'tasks#update'
  # # DELETE
  # delete 'tasks/:id', to: 'tasks#destroy'
end
