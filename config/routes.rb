Rails.application.routes.draw do
  get '/men', to: "article#men"

  get '/women', to: "article#women"

  get '/kids', to: "article#kids"

  root 'article#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
