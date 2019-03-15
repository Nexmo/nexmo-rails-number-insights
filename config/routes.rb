Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/number_insights', to: 'number_insights#index'

  get '/number_insights/show', to: 'number_insights#show'

  post '/number_insights/new', to: 'number_insights#create'

end
