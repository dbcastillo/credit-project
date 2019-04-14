Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/creditcards', to: 'creditcards#index'
  get '/creditcards/:id', to: 'creditcards#show'
end
