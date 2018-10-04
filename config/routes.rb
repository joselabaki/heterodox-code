Rails.application.routes.draw do
 
  scope "(:locale)" , locale: /#{I18n.available_locales.join("|")}/   do
  get '/thanks' => 'thanks#index'
  get 'versions/hades'
  get 'versions/eros'
  get '/cronos' => 'versions#cronos'
  
  devise_for :users
  get '/cms'  => 'backdoor#cms'
  get '/about' => 'static#about'
  get '/contact' => 'static#contact'

  resources :projects
  # root 'projects#index', as: :root
  root :to => redirect('en/projects')

end

end