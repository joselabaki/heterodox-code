Rails.application.routes.draw do
  scope "(:locale)" , locale: /#{I18n.available_locales.join("|")}/   do
  get '/thanks' => 'thanks#index'

  devise_for :users
  get 'backdoor/cms'
  get 'static/about'
  get 'static/contact'

  resources :projects
  root  'projects#index'
  get 'leads/index'

  resources :leads
end

end