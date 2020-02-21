Rails.application.routes.draw do
  get 'character/index'
  get 'character/detail'

  root 'character#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
