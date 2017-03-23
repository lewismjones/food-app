class RecipesController < ApplicationController
before_action :set_recipe, only: [:show, :destroy, :update]
before_action :set_edit_recipe, only: [:update_ingredient, :update_instruction, :update_image ]

  # GET /recipes
  # GET /recipes.json
  def index
    @recipes = Recipe.all
  end

  # GET /recipes/1
  # GET /recipes/1.json
  def show
  end

  # GET /recipes/new
  def new
    @recipe = Recipe.new

  end

  def newingredient
    @ingredient = Ingredient.new
    @recipe = Recipe.find(params[:recipe_id])
  end

  def newinstruction
    @instruction = Instruction.new
    @recipe = Recipe.find(params[:recipe_id])
  end

  def newimage
    @image = Image.new
    @recipe = Recipe.find(params[:recipe_id])
  end


  # POST /recipes
  # POST /recipes.json
  def create
    @recipe = Recipe.new(recipe_params)


    respond_to do |format|
      if @recipe.save
        format.html {redirect_to new_ingredient_path(@recipe)}
        format.json { render :show, status: :created, location: @recipe }
      else
        format.html { render :new }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  def create_ingredient
    @ingredient = Ingredient.new(ingredient_params)
    @recipe = Recipe.find(params[:ingredient][:recipe_id])
    if @ingredient.save!
      redirect_to new_instruction_path(@recipe)
    else
      render :new
  end
end

def create_instruction
  @instruction = Instruction.new(instruction_params)
  @recipe = Recipe.find(params[:instruction][:recipe_id])
  if @instruction.save!
    redirect_to new_image_path(@recipe)
  else
    render :new
  end
end

def create_image
  @image = Image.new(image_params)
  @recipe = Recipe.find(params[:image][:recipe_id])
  if @image.save!
    redirect_to @recipe
  else
    render :new
  end
end

# GET /recipes/1/edit
def edit
  @recipe = Recipe.find(params[:id])
end

def editingredient
  @recipe = Recipe.find(params[:recipe_id])
  @ingredient = @recipe.ingredient

end

def editinstruction
  @recipe = Recipe.find(params[:recipe_id])
  @instruction = @recipe.instruction

end

def editimage
  @recipe = Recipe.find(params[:recipe_id])
  @image = @recipe.image

end


  # PATCH/PUT /recipes/1
  # PATCH/PUT /recipes/1.json
  def update
    respond_to do |format|
      if @recipe.update(recipe_params)
        format.html { redirect_to update_ingredient_path(@recipe) }
        format.json { render :show, status: :ok, location: @recipe }
      else
        format.html { render :edit }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  def update_ingredient
    @ingredient = @recipe.ingredient
    if @ingredient.update(ingredient_params)
      redirect_to update_instruction_path(@recipe)
    else
      render :new
    end
  end

def update_instruction
  @instruction = @recipe.instruction
  if @instruction.update(instruction_params)
    redirect_to update_image_path(@recipe)
  else
    # render :new
  end
end

def update_image
  @image = @recipe.image
  if @image.update(image_params)
    redirect_to Category.find(@recipe.category_id)
  else
    # render :new
  end
end



  # DELETE /recipes/1
  # DELETE /recipes/1.json
  def destroy
    @category = Category.find(@recipe.category_id)
    @recipe.destroy
    respond_to do |format|
      format.html { redirect_to @category }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end
    def set_edit_recipe
      @recipe = Recipe.find(params[:recipe_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipe_params
      params.require(:recipe).permit(:description, :category_id, :id)
    end

    def ingredient_params
      params.require(:ingredient).permit(:name, :recipe_id)
    end

    def instruction_params
      params.require(:instruction).permit(:step, :recipe_id)
    end
    def image_params
      params.require(:image).permit(:image_url, :recipe_id)
    end

end
