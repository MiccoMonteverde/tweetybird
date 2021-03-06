Rails.application.routes.draw do
  get "signup", to: "users#new"
  get "static_pages/home", to: "static_pages#home"
  get "static_pages/help", to: "static_pages#help"
  get "static_pages/about", to: "static_pages#about"
  get "static_pages/contact", to: "static_pages#contact"
  get "/", to: redirect("static_pages/home") # redirects root to home page
  root "static_pages#home"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
