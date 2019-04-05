Rails.application.routes.draw do
  resources :students, only: [:index, :show]
  # students GET  /students(.:format)     students#index
  # student GET   /students/:id(.:format)  students#show
  get '/students/:id/activate', to: 'students#activate', as: 'activate_student'
end
