Rails.application.routes.draw do

  get '/'

  get 'search/new'

  post 'search/new'

  get 'search/show'

  get 'search/list'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
