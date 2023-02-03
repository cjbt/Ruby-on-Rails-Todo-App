Rails.application.routes.draw do
  root "todo_entries#index"

  resources :todo_entries
end
