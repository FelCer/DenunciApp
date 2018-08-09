Rails.application.routes.draw do
  get 'contactenos/index'

  get 'mision/index'

  get 'vision/index'

  get 'inicio/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root  "inicio#index"
end
