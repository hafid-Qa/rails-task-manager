# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :tasks
  # Defines the root path route ("/")
  # root "articles#index"
  # read all
  root 'tasks#index'
  # get '/tasks', to: 'task#index', as: :tasks
  # # create
  # get 'tasks/new', to: 'tasks#new', as: :new_task
  # post 'tasks', to: 'tasks#create'
  # # read one
  # get 'tasks/:id', to: 'tasks#show', as: :task
  # # update
  # get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  # patch 'tasks/:id', to: 'tasks#update'
  # # destroy
  # delete 'tasks/:id', to: 'tasks#destroy'
end
