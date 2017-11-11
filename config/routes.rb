Rails.application.routes.draw do
  devise_for :users
  root to: "users#index"

  get 'donations/index'

  get 'donations/new'

  get 'donations/edit'

  get 'donations/create'

  get 'donations/update'

  get 'donations/destroy'

  get 'project_tasks/index'

  get 'project_tasks/new'

  get 'project_tasks/edit'

  get 'project_tasks/create'

  get 'project_tasks/update'

  get 'project_tasks/destroy'

  get 'projects/index'

  get 'projects/new'

  get 'projects/edit'

  get 'projects/create'

  get 'projects/update'

  get 'projects/destroy'

  get 'users/index'

  get 'users/edit'

  get 'users/create'

  get 'users/update'

  get 'users/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
