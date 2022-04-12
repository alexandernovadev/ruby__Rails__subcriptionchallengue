Rails.application.routes.draw do

  scope '(:locale)', locale: /#{I18n.available_locales.join("|")}/ do
    root "subscriptions#index"
    get "subscriptions/validateEmailServer"
    resources :subscriptions
    
    # match "*missing" => redirect("/")
    # Defines the root path route ("/")
    get '*path' => redirect('/')
  end
end
