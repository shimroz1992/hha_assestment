Rails.application.routes.draw do
  get 'redact', to: 'redact#index'
  post 'redact', to: 'redact#create'
end
