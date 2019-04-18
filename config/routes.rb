Rails.application.routes.draw do
  resources :meetings
  resources :customers
  resources :apart_types
  resources :proyects
  resources :users
  root 'pages#index'

  get 'pages/index'

  get 'pages/about_us'

  get 'pages/proforma'

  get 'pages/separa_depa'

  get 'pages/registro_venta'

  get 'pages/reporte'

  get 'pages/login'

  get 'pages/contact_us'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
