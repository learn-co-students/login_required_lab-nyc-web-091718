Rails.application.routes.draw do
get 'show', to: "secrets#show"
get 'new', to: "sessions#new"
post 'create', to: "sessions#create"
get 'destroy', to: "sessions#destroy"
end
