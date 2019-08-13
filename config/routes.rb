Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #List all the tasks
  get 'tasks', to: 'tasks#index'

  #New task
  get 'tasks/new', to: 'tasks#new'

  #Read one
  get 'tasks/:id', to: 'tasks#show', as: :task

  #Create the new task
  post 'tasks', to: 'tasks#create'

  #Edit a task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :task_edit

  #Update a task
  patch 'tasks/:id', to: 'tasks#update'

  #Delete
  delete 'tasks/:id', to: 'tasks#destroy'

end
