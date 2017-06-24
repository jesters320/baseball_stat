Rails.application.routes.draw do
  get 'at_bats', to: 'at_bats#index'
  get 'at_bats/data_table', to: 'at_bats#data_table'
  
  get 'teams', to: 'teams#index'

  root to: "teams#index"
  
  # For details on the DSL available within this file,  see http://guides.rubyonrails.org/routing.html
end
