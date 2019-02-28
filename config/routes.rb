Rails.application.routes.draw do
  root 'statique#accueil'

  get '/about', to: "statique#about"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
