Rails.application.routes.draw do
  root to: "pages#index"

  resources :subjects
  resources :students
  resources :student_subjects
end
