# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # read all
  root 'tasks#index'
  # create
  get 'tasks/new', to: 'tasks#new', as: :new_task
  # read one
  get 'tasks/:id', to: 'tasks#show', as: :task
end
