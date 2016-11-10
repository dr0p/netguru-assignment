Rails.application.routes.draw do
  resources :student_payments, only: [:index]
  devise_for :users
  resources :students do
    get :subjects
  end
  resources :teachers do
    get :subjects
  end
  get 'reports/subjects', to: 'reports#subjects', as: 'report_subjects'
  resources :visitors, only: [:index]
  root 'visitors#index'
end
