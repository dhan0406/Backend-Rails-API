Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get '/coffeeshops', to: 'coffeeshops#index', as: 'coffeeshops'

  get '/match', to: 'coffeeshops#match', as: 'match'
end

