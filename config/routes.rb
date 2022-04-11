Rails.application.routes.draw do

  scope '(:locale)', locale: /#{I18n.available_locales.join("|")}/ do
    root "susciptions#index"
    resources :susciptions
    # Defines the root path route ("/")
  end
end
