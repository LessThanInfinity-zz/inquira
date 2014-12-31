class TopicsController < ApplicationController
  before_action :set_topic, only: [:show, :edit, :update, :destroy]

  respond_to :html, :json

  def index
    @topics = Topic.all
    # respond_with(@topics)
    respond_with(@topics) do |format|
      format.html
      format.json {render json: @topics}
    end
  end

  def show
    # respond_with(@topic)
    respond_with(@topic) do |format|
      format.html
      format.json {render json: @topic}
    end
  end

  def new
    @topic = Topic.new
    # respond_with(@topic)
    respond_with(@topic) do |format|
      format.html
      format.json {render json: @topic}
    end
  end

  def edit
  end

  def create
    @topic = Topic.new(topic_params)
    @topic.save
    # respond_with(@topic)

    respond_with(@topic) do |format|
      format.html
      format.json {render json: @topic}
    end
  end

  def update
    @topic.update(topic_params)
    respond_with(@topic)
  end

  def destroy
    @topic.destroy
    respond_with(@topic)

    respond_with(@topic) do |format|
      format.html
      format.json {render json: @topic}
    end
  end

  private
    def set_topic
      @topic = Topic.find(params[:id])
    end

    def topic_params
      params[:topic]
      params.require(:topic).permit(:title)
    end
end
