Rails.application.routes.draw do
  get 'en/thanks' => 'thanks#index'
  scope ":locale" , locale: /#{I18n.available_locales.join("|")}/   do

  devise_for :users
  get 'backdoor/cms'
  get 'static/about'
  get 'static/contact'

  resources :projects
  root 'projects#index'
  get 'leads/index'

  resources :leads
end

get '*path', to: redirect("/#{I18n.default_locale}/%{path}")
get '', to: redirect("/#{I18n.default_locale}")

end