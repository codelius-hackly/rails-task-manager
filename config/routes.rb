Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # As a user, I can list tasks
  root to: 'tasks#index'
  # get "tasks/new", to: "tasks#new"
  # post "tasks", to: "tasks#create"
  # get "tasks/:id", to: "tasks#show", as: :task
  # get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  # patch "tasks/:id", to: "tasks#update"
  # delete "tasks/:id", to: "tasks#destroy"
  resources :tasks, except: :index
end

# As a user, I can view the details of a task
# As a user, I can add a new task
# As a user, I can edit a task (mark as completed / update title & details)
# As a user, I can remove a task
