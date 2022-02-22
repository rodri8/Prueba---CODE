# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  get 'examen', to: 'examen#index'
  get 'examen/:codigo', to: 'examen#show', as: 'examen_codigo'
  root to: 'home#inicio', as: 'inicio'
  resources :preguntas
  resources :evaluaciones

  devise_for :users     #metodos API REST para la APP de pasajes

	scope 'api' do
	  scope 'v1' do
  		resources :respuestas
  		#resources :empresas
  		#resources :imagenes
  		resources :roles
	  end
	end
end
