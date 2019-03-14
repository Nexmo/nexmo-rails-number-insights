Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :number_insights, only: [:index, :show]

  get '/number_insights/basic', to: 'number_insights#basic'
  get '/number_insights/standard', to: 'number_insights#standard'
  get '/number_insights/advanced', to: 'number_insights#advanced'

  post '/number_insights', to: 'number_insights#create'

  post '/webhook/event', to: 'number_insights#event'

end
