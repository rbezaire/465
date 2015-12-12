class ImagesController < ApplicationController
  before_action :set_image, only: [:show, :edit, :update, :destroy]

  # GET /images
  # GET /images.json
  def index
    @images = Image.all
  end

  # GET /images/1
  # GET /images/1.json
  def show
  end

  # GET /images/new
  def new
    @image = Image.new
  end

  # GET /images/1/edit
  def edit
  end

  # POST /images
  # POST /images.json
  def create
	recipe = Recipe.find(params[:recipe_id])
    @image = recipe.images.new(image_params)
	#recipe.generate_filename
	@image.filename = rand(1000000000)
	@uploaded_io = params[:image][:uploaded_file]

	File.open(Rails.root.join('public', 'images', @image.filename), 'wb') do |file|
		file.write(@uploaded_io.read)
	end

	if @image.save
		redirect_to @image.recipe, notice: 'Image was  successfully created.'
	else
		render :new
	end

#    respond_to do |format|
 #     if @image.save
 #       format.html { redirect_to @recipe, notice: 'Image was successfully created.' }
 #       format.json { render :show, status: :created, location: @image }
 #     else
 #       format.html { render :new }
 #       format.json { render json: @image.errors, status: :unprocessable_entity }
 #     end
 #   end
  end

  # PATCH/PUT /images/1
  # PATCH/PUT /images/1.json
  def update
    respond_to do |format|
      if @image.update(image_params)
        format.html { redirect_to @recipe, notice: 'Image was successfully updated.' }
        format.json { render :show, status: :ok, location: @image }
      else
        format.html { render :edit }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /images/1
  # DELETE /images/1.json
  def destroy
    @image.destroy
	  redirect_to @image.recipe, notice: 'Image was successfully destroyed.'
#    respond_to do |format|
 #     format.html { redirect_to recipes_url, notice: 'Image was successfully destroyed.' }
 #     format.json { head :no_content }
 #   end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image
      @image = Image.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def image_params
      params.require(:image).permit(:filename, :recipe_id, :recipe_name)
    end
end
