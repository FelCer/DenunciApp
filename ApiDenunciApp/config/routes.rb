Rails.application.routes.draw do
  post 't_usuarios_token' => 't_usuarios_token#create'
  resources :t_pedagogia_comentarios
  resources :t_pedagogia
  resources :estado_casos
  resources :t_estado_caso_cuadrantes
  resources :t_muro_comentarios
  resources :t_muros
  resources :t_usuarios
  resources :t_perfils
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
