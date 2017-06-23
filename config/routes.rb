Rails.application.routes.draw do
  get 'at_bats', to: 'at_bats#index'
  
  get 'teams', to: 'teams#index'

  root to: "teams#index"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
