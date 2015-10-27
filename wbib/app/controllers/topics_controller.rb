# This controller does not have a show function
# since topics are shown by reference, it does not make sense to
# show a single topic

class TopicsController < ApplicationController
  before_action :set_topic, only: [:edit, :update, :destroy]

  # GET /references/:reference_id/topics
  def index
    # index is now all the topics for a single reference (not all the topics)
    # the URL will contain the id of the current reference (:reference_id)
    # use the :reference_id parameter to find all the topics
    @reference = Reference.find params[:reference_id]
    # the has_many function called in app/models/reference.rb created the 
    # function "topics" which will return an array of all the topics 
    # with the reference foreign key matching @reference
    @topics = @reference.topics
  end

  # GET references/:reference_id/topics/new
  # Create a new topic in the context of a Reference object
  # that way the Topic's foreign key (reference_id) will be
  # initialized correctly.
  def new
    # since our the topic new path contains the reference's id
    # we can use params[:reference_id] to get that id
    @reference = Reference.find params[:reference_id]

    # This is similar to Topic.new, BUT it creates the new topic
    # in the context of a Reference object and sets the foreign key
    @topic = @reference.topics.new
  end

  # GET /topics/1/edit
  def edit
    # edit routes are not nested (we already know our reference's foreign_key)
  end

  # POST references:/:reference_id/topics
  # we need the reference's key in the URL to make sure that someone 
  # isn't trying to hack the id of the new topic's reference
  # rails ensures that the URL has not be tampered with
  def create
    @reference = Reference.find params[:reference_id]
    @topic = @reference.topics.new(topic_params)

    if @topic.save
      redirect_to reference_topics_url(@reference) , notice: 'Topic was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /topics/1
  # updates don't have to be nested because the reference foreign key is already set
  # and cannot be changed by edit (note that reference_id is not permitted in topic_params())
  def update
    if @topic.update(topic_params)
      redirect_to reference_topics_url(@topic.reference), notice: 'Topic was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /topics/1
  def destroy
    @topic.destroy
    redirect_to reference_topics_url(@topic.reference) , notice: 'Topic was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_topic
      @topic = Topic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def topic_params
      params.require(:topic).permit(:title, :description, :reference)
    end
end
