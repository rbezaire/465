class TopicsController < ApplicationController
  before_action :set_topic, only: [:show, :edit, :update, :destroy]

  # GET /topics
  def index
    @topics = Topic.all
  end

  # GET /topics/1
  def show
	@reference = @topic.references.new
  end

  # GET /topics/new
  def new
    @topic = Topic.new

	@reference = @topic.references.new
  end

  # GET /topics/1/edit
  def edit
  end

  # POST /topics
  def create
  # MAGIC SPOT
  # Since the Topic "has_many" ratings, the new function looks
  # for References parameters in the given parameters.  If it finds 
  # them it will also create one (or more) new Reference objects
    @topic = Topic.new(topic_params)

    if @topic.save
      redirect_to @topic, notice: 'Topic was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /topics/1
  def update
    if @topic.update(topic_params)
      redirect_to @topic, notice: 'Topic was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /topics/1
  def destroy
    @topic.destroy
    redirect_to topics_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_topic
      @topic = Topic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def topic_params
      params.require(:topic).permit(:title, :description, reference_ref: [:url, :time])
    end
end
