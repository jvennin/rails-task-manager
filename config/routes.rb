Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Read all
  get 'tasks', to: 'tasks#index'

  # Create 1
  get 'tasks/new', to: 'tasks#new', as: :new_task
  # Create 2
  post 'tasks', to: 'tasks#create'

  # Read one
  get 'tasks/:id', to: 'tasks#show', as: :task
  # Edit
  get    'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  # Update
  patch  'tasks/:id',      to: 'tasks#update'
  # Delete
  delete 'tasks/:id',      to: 'tasks#destroy'
end
