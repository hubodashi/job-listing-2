Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 devise_for :users
 resources :jobs do
   resoures :resumes
 end
 root 'jobs#index'
  namespace :admin do
   resources :jobs do
     member do
       post :publish
       post :hide
     end
     resources :resumes
   end
  end
 end
