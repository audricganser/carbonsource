Rails.application.routes.draw do

  get '/' => "search#index"

  get 'search/new' => "search#new"

  post 'search/new'

  get 'search/show' => "search#show"

  get 'search/list' => "search#list"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
