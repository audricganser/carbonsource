Rails.application.routes.draw do

  get '/' => "search#new"

  post 'search/create' => "search#create"

  get '/:id' => "search#show"

  get '/list' => "search#list"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
