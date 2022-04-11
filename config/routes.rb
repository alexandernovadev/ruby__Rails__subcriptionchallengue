Rails.application.routes.draw do

  scope '(:locale)', locale: /#{I18n.available_locales.join("|")}/ do
    root "susciptions#index"
    resources :susciptions

    # match "*missing" => redirect("/")
    # Defines the root path route ("/")
    get '*path' => redirect('/')
  end
end
