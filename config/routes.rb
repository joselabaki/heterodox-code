Rails.application.routes.draw do
 
  devise_for :users
  get 'backdoor/cms'
  get 'static/about'
  get 'static/contact'
  
  resources :projects

  root 'projects#index'
end