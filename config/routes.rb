Rails.application.routes.draw do
  get 'at_bats/index'

  root to: "at_bats#index"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
