class TopicsController < ApplicationController
  before_action :get_topics, only: [:show, :display]
  before_action :set_topic, only: [:show, :update, :edit, :destroy]

  def index
    @topic = Topic.find(params[:id])
  end

  def display
    @topics = Topic.all.order('votes desc')
  end

  def show
    @topic = Topic.find(params[:id])
    render :json => @topic.to_json
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topic_params)
    @topic.save
  end

  def edit
    @users = User.all
  end

  def update
    @descontento = Topic.find(params[:id])
    @descontento.votes += 1000
    @descontento.save
  end

  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def get_topics
      @topics = Topic.all
    end

    def set_topic
      @topic = Topic.find(params[:id])
    end

    def topic_params
      params.require(:topic).permit(:name, :description, :votes, :user_id, :lat, :lon)
    end

end
