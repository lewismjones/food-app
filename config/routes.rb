Rails.application.routes.draw do
  resources :categories
  resources :recipes

get '/' => 'welcome#welcome'

get '/:recipe_id/ingredient/new' => 'recipes#newingredient', as: 'new_ingredient'
post '/ingredients/' => 'recipes#create_ingredient'

get '/:recipe_id/instruction/new' => 'recipes#newinstruction', as: 'new_instruction'
post '/instructions/' => 'recipes#create_instruction'

get '/:recipe_id/ingredient/edit' => 'recipes#editingredient', as: 'edit_ingredient'
patch '/ingredients/' => 'recipes#update_ingredient'

get '/:recipe_id/instruction/edit' => 'recipes#editinstruction', as: 'edit_instruction'
patch '/instructions/' => 'recipes#update_instruction'




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
