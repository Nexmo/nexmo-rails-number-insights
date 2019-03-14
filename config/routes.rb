Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :number_insights, only: [:index, :show]

  post '/number_insights', to: 'number_insights#create'

  post '/webhook/event', to: 'number_insights#event'

end
