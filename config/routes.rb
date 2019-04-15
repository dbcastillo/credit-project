Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :creditcards do
    resources :charges
  end

  # get '/creditcards/new', to: 'creditcards#new'
  # post '/creditcards', to: 'creditcards#create'
  #
  # get '/creditcards', to: 'creditcards#index'
  # get '/creditcards/:id', to: 'creditcards#show'
  #
  # get '/creditcards/:id/edit', to: 'creditcards#edit'
  # patch '/creditcards/:id', to: 'creditcards#update', as: 'creditcard'


end
