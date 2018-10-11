Rails.application.routes.draw do

  get 'descripcion', to: 'descripcion#index'

  resources :comentarios
  devise_for :usuarios
	resources :tareas do
		resources :comentarios
	end

  get 'saludo/index'
  root 'saludo#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
