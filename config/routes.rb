Rails.application.routes.draw do
  scope ":locale" , locale: /#{I18n.available_locales.join("|")}/   do

  devise_for :users
  get 'backdoor/cms'
  get 'static/about'
  get 'static/contact'

  resources :projects
  root 'projects#index'
end
get '*path', to: redirect("/#{I18n.default_locale}/%{path}")
get '', to: redirect("/#{I18n.default_locale}")

end