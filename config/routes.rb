Rails.application.routes.draw do
  get 'students/index'
  get 'students/show'
  get 'students/create'
  get 'students/new'
  root 'schools#new'

  resources :schools

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

