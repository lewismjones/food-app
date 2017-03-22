Rails.application.routes.draw do
  resources :categories
  resources :recipes

get '/' => 'welcome#welcome'

get '/:recipe_id/ingredient/new' => 'recipes#newingredient', as: 'new_ingredient'
post '/ingredients/' => 'recipes#create_ingredient'

get '/:recipe_id/instruction/new' => 'recipes#newinstruction', as: 'new_instruction'
post '/instructions/' => 'recipes#create_instruction'

get '/:recipe_id/image/new' => 'recipes#newimage', as: 'new_image'
post '/images/' => 'recipes#create_image'



get '/:recipe_id/ingredients/edit' => 'recipes#editingredient', as: 'update_ingredient'
patch '/:recipe_id/ingredients/edit' => 'recipes#update_ingredient'

get '/:recipe_id/instructions/edit' => 'recipes#editinstruction', as: 'update_instruction'
patch '/:recipe_id/instructions/edit' => 'recipes#update_instruction'

get '/:recipe_id/images/edit' => 'recipes#editinstruction', as: 'update_image'
patch '/:recipe_id/images/edit' => 'recipes#update_image'




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
