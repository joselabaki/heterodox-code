Rails.application.routes.draw do
 
  get 'static/about'
  get 'static/contact'
  
  resources :projects

  root 'projects#index'
end